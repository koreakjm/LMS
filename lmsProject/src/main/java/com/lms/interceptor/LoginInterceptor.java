package com.lms.interceptor;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.lms.domain.UserVO;
import com.lms.dto.AuthDTO;
import com.lms.service.UserService;

public class LoginInterceptor extends HandlerInterceptorAdapter {

	private static final String LOGIN = "login";
	private static final String LAB = "lab";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

	@Inject
	private UserService service;
	
	//UserVO ��ü Ȯ��(�α��� �������� �ƴ���) �� HttpSession ����
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		HttpSession session = request.getSession();

		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("userVO");

		if (userVO != null) {

			//로그인 확인 완료
			logger.info("new login success " + userVO);
			session.setAttribute(LOGIN, userVO);
			
			//실습실 참여인 확인
			logger.info("LAB 여부 확인");
			UserVO vo = (UserVO)userVO;
			AuthDTO dto =  service.checkAuth(vo.getUserNo());
			
			if(dto != null) {
				//참여중인 학생
				session.setAttribute(LAB, dto);
				logger.info("LAB 참여중인 학생");
			
				
			}else {
				//로그인 했으나 참여중이지 않은 학생
				AuthDTO beforeDto = new AuthDTO();
				beforeDto.setMyAuthority("0");
				session.setAttribute(LAB, beforeDto);
				logger.info("LAB 로그인 했으나 참여중이지 않은 학생");
				
			}
			
			// response.sendRedirect("/");

			//����ڰ� �α��� ���� ���� �ִ� ���
			Object dest = session.getAttribute("dest");

			response.sendRedirect(dest != null ? (String) dest : "/");
		}
	}

	//HttpSession �ʱ�ȭ
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();

		if (session.getAttribute(LOGIN) != null) {
			logger.info("clear login data before");
			session.removeAttribute(LOGIN);
		}

		return true;
	}

}