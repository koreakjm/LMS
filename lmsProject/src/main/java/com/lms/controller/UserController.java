package com.lms.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lms.domain.PageMaker;
import com.lms.domain.SearchCriteria;
import com.lms.domain.UserVO;
import com.lms.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	private UserService service;

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public void pwModifyGET() throws Exception {

	}

	@RequestMapping(value = "/pwModify", method = RequestMethod.GET)
	public void read(@RequestParam("userNo") String userNo, Model model) throws Exception {

		logger.info("pwModify get.............");
		model.addAttribute(service.read(userNo));
	}

	// 비밀번호 수정
	@RequestMapping(value = "/pwModify", method = RequestMethod.POST)
	public String pwModifyGET(@ModelAttribute UserVO vo, @RequestParam("new_pw") String newPw, Model model,
			RedirectAttributes rttr) throws Exception {

		// 비밀번호 체크
		boolean result = service.checkPw(vo.getUserNo(), vo.getUserPw());

		if (result) { // 비밀번호가 일치하면 수정 처리 후, 홈
			
			logger.info("newPw! ............." + newPw);

			// 새 비밀번호를 userPw에 담는다.
			vo.setUserPw(newPw);

			service.updatePw(vo);

			logger.info("success pwModify! ............." + vo);

			rttr.addFlashAttribute("msg", "SUCCESS"); // 성공하면 mypage에서 메세지를 보여준다.

			return "redirect:/user/mypage";

		} else { // 비밀번호가 일치하지 않는다면, div에 불일치 문구 출력, mypage 이동

			rttr.addFlashAttribute("msg", "FAIL"); // 실패하면 mypage에서 메세지를 보여준다.

			model.addAttribute("login", service.read(vo.getUserNo()));

			logger.info("fail pwModify! .............");

			return "redirect:/user/mypage";
		}

	}

	// 회원 목록, 페이징, 검색
	@RequestMapping(value = "/userList", method = RequestMethod.GET)
	public void userList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		System.out.println("=====" + cri.toString());

		model.addAttribute("list", service.listSearch(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		// pageMaker.setTotalCount(131);

		pageMaker.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);

	}

	@RequestMapping(value = "/userRegister", method = RequestMethod.GET)
	public void registerGET(UserVO vo, Model model) throws Exception {

		logger.info("register get...........");
	}

	// 등록 후 검색 페이지 유지(POST)//
	@RequestMapping(value = "/userRegister", method = RequestMethod.POST)
	public String registPOST(UserVO vo, RedirectAttributes rttr) throws Exception {

		logger.info("register post...........");
		logger.info(vo.toString());

		service.insert(vo);

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/user/userList";

	}

	// 회원 상세보기, 페이징, 검색
	@RequestMapping(value = "/userRead", method = RequestMethod.GET)
	public void read(@RequestParam("userNo") String userNo, @ModelAttribute("cri") SearchCriteria cri, Model model)
			throws Exception {

		model.addAttribute(service.read(userNo));
	}

	// 회원 수정 페이지로 이동//
	@RequestMapping(value = "/userModify", method = RequestMethod.GET)
	public void modifyPagingGET(@RequestParam("userNo") String userNo, @ModelAttribute("cri") SearchCriteria cri,
			Model model) throws Exception {

		model.addAttribute(service.read(userNo));
	}

	// 수정 후 검색 페이지 유지 (POST)//
	@RequestMapping(value = "/userModify", method = RequestMethod.POST)
	public String modifyPagingPOST(UserVO vo, RedirectAttributes rttr, SearchCriteria cri) throws Exception {

		service.update(vo);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/user/userList";

	}

	// 삭제 후 검색 페이지 유지//
	@RequestMapping(value = "/userRemove", method = RequestMethod.POST)
	public String remove(@RequestParam("userNo") String userNo, SearchCriteria cri, RedirectAttributes rttr)
			throws Exception {

		service.delete(userNo);

		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());

		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/user/userList";
	}

}
