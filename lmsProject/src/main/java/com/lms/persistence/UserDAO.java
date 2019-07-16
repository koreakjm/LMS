package com.lms.persistence;

import com.lms.domain.UserVO;
import com.lms.dto.LoginDTO;

public interface UserDAO {
	
	public UserVO login(LoginDTO dto) throws Exception;
	
	

}
