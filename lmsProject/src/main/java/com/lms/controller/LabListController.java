
package com.lms.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lms.domain.LabListVO;
import com.lms.service.LabListService;

@Controller
@RequestMapping("/main/*")
public class LabListController {

	private static final Logger logger = LoggerFactory.getLogger(LabListController.class);

	@Inject
	private LabListService service;

/*	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {

		logger.info("show post ...............");
		// list.jsp에서 list를 쓰면됨.
		model.addAttribute("list", service.labListAll());
	}*/

	// 메인에서 신청팝업창
	@RequestMapping(value = "/labJoin", method = RequestMethod.GET)
	public void labJoinGET(LabListVO labList, Model model) throws Exception {
		model.addAttribute("joinTime", service.getTime());
		logger.info("labJoin get..............");

	}

	// 신청팝업창에서 값입력
	@RequestMapping(value = "/labJoin", method = RequestMethod.POST)
	public String labJoinPOST(LabListVO labList, Model model, RedirectAttributes rttr) throws Exception {

		logger.info("labJoin..............신청");
		logger.info(labList.toString());

		service.labJoin(labList);

		// addFlashAttribute ==> 휘발성
		rttr.addFlashAttribute("result", "신청되었습니다.");

		return "redirect:/";

	}
	
	// 메인에서 참여팝업창
		@RequestMapping(value = "/labApply", method = RequestMethod.GET)
		public void labApplyGET(LabListVO labList, Model model) throws Exception {
			model.addAttribute("applyTime", service.getTime());
			logger.info("labJoin get..............");

		}

		// 참여팝업창에서 값입력
		@RequestMapping(value = "/labApply", method = RequestMethod.POST)
		public String labApplyPOST(LabListVO labList, Model model, RedirectAttributes rttr) throws Exception {

			logger.info("labApply..............참여");
			logger.info(labList.toString());

			service.labApply(labList);
			rttr.addFlashAttribute("result", "참여되었습니다.");

			return "redirect:/";

		}
	
}
