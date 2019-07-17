package com.lms.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lms.domain.UserVO;
import com.lms.dto.LoginDTO;
import com.lms.service.LabListService;
import com.lms.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private LabListService labservice;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) throws Exception {
		
		logger.info("Welcome home!");
		logger.info("show post ...............");
		// list.jsp에서 list를 쓰면됨.
		model.addAttribute("list", labservice.labListAll());
		return "home";
	}
	
	/*@Inject
	private LabListService labservice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {

		logger.info("show post ...............");
		// list.jsp에서 list를 쓰면됨.
		model.addAttribute("list", labservice.labListAll());
	}*/
	
	@Inject
	private UserService service;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {

	}

	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {

		UserVO vo = service.login(dto);

		System.out.println("================>" + vo);

		if (vo == null) {
			return;
		}

		model.addAttribute("userVO", vo);

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)
			throws Exception {

		Object obj = session.getAttribute("login");

		if (obj != null) {

			logger.info("logout: session.invalidate()");

			session.removeAttribute("login");
			session.invalidate();
		}

		return "redirect:/login";

	}
}
