package com.lms.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lms.domain.UserVO;
import com.lms.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Inject
	private SqlSession session;
	
	private static final String namespace ="com.lms.mapper.UserMapper";

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		
		return session.selectOne(namespace + ".login", dto);
	}


	

}
