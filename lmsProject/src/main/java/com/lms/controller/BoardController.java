package com.lms.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

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

import com.lms.domain.BoardVO;
import com.lms.domain.Criteria;
import com.lms.domain.PageMaker;
import com.lms.domain.SearchCriteria;
import com.lms.service.BoardService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Inject
	private BoardService service;

	// Simply selects the home view to render by returning its name.

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "home";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {

		logger.info(cri.toString());

		System.out.println("======" + cri.toString());
		model.addAttribute("list", service.listSearchCriteria(cri));

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);

		pageMaker.setTotalCount(service.listSearchCount(cri));

		model.addAttribute("pageMaker", pageMaker);
	}

	// 게시물 등록
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGet(BoardVO board, Model model) throws Exception {

		logger.info("register get...........");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(BoardVO board, Model model, RedirectAttributes rttr) throws Exception {

		logger.info("register post...........");
		logger.info(board.toString());

		service.register(board);

		/* rttr.addFlashAttribute("msg", "SUCCESS"); */

		return "redirect:/board/list";

	}

	// 상세보기
	@RequestMapping(value = "/readPage", method = RequestMethod.GET)
	public void read(@RequestParam("boardNo") int boardNo, @ModelAttribute("cri") Criteria cri, Model model)
			throws Exception {

		logger.info("readPage ...........");
		model.addAttribute(service.read(boardNo));
		logger.info("readPage fileVO : " + service.fileList(boardNo).size());
		model.addAttribute("fileVO", service.fileList(boardNo));
		
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyPageGET(@RequestParam("boardNo") int boardNo, @ModelAttribute("cri") Criteria cri,
			Model model) throws Exception {

		// read의 리턴 타입이 BoardVO이기 때문에 boardVO를 modifyPage.jsp에서 쓸 수 있음.
		System.out.println("boardNo================ " + boardNo);
		model.addAttribute(service.read(boardNo));
		logger.info("readPage fileVO : " + service.fileList(boardNo).size());
		model.addAttribute("fileVO", service.fileList(boardNo));

	}
	
    @RequestMapping(value="/remove", method = RequestMethod.POST)
    public String remove(@RequestParam("boardNo") int boardNo, SearchCriteria cri, RedirectAttributes rttr) throws Exception{
          
          service.remove(boardNo);
          
          rttr.addAttribute("page", cri.getPage());
          rttr.addAttribute("perPageNum", cri.getPerPageNum());
          rttr.addAttribute("searchType", cri.getSearchType());
          rttr.addAttribute("keyword", cri.getKeyword());
          rttr.addFlashAttribute("msg", "SUCCESS");
       
       return "redirect:/board/list";
    }

	// 수정할때는 이름, 내용 ... BoardVO를 가져온다. 삭제할때는 이름,내용은 필요가 없으므로 bno만 가져온다. 마찬가지로 등록할때는
	// BoardVO가져옴.
	@RequestMapping(value ="/modify", method = RequestMethod.POST)
	public String modifyPagePOST(BoardVO board, @RequestParam("boardNo") int boardNo, RedirectAttributes rttr, SearchCriteria cri) throws Exception {

		
		service.deleteFile(boardNo);
		logger.info("deleteFile : " + boardNo);
		
		service.modify(board);

		logger.info("modify post........... : " + board);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		rttr.addAttribute("searchType", cri.getSearchType());
		rttr.addAttribute("keyword", cri.getKeyword());
		rttr.addFlashAttribute("msg", "SUCCESS");

		return "redirect:/board/list";

	}
}
