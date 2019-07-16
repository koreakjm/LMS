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
import com.lms.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	private UserService service;

	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void loginGET() {

	}
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public void pwModifyGET() {

	}

}
