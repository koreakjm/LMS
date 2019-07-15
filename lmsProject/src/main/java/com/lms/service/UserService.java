package com.lms.service;

import com.lms.domain.UserVO;
import com.lms.dto.LoginDTO;

public interface UserService {
	
	public UserVO login(LoginDTO dto) throws Exception;

}
