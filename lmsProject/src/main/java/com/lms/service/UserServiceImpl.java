package com.lms.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lms.domain.UserVO;
import com.lms.dto.LoginDTO;
import com.lms.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	private UserDAO dao;

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return dao.login(dto);
	}
	

	
	
	

}
