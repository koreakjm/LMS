package com.lms.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lms.domain.SearchCriteria;
import com.lms.domain.UserVO;
import com.lms.dto.AuthDTO;
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

	@Override
	public UserVO read(String userNo) throws Exception {

		return dao.read(userNo);
	}

	@Override
	public boolean checkPw(String userNo, String userPw) throws Exception {
	
		return dao.checkPw(userNo, userPw);
		
	}

	@Override
	public void updatePw(UserVO vo) throws Exception {
		
		dao.updatePw(vo);
		
	}

	@Override
	public void insert(UserVO vo) throws Exception {

		dao.insert(vo);
	}

	@Override
	public List<UserVO> listSearch(SearchCriteria cri) throws Exception {
		
		return dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return dao.listSearchCount(cri);
	}

	@Override
	public void update(UserVO vo) throws Exception {
		
		dao.update(vo);
		
	}

	@Override
	public void delete(String userNo) throws Exception {
		
		dao.delete(userNo);
		
	}

	@Override
	public AuthDTO checkAuth(String userNo) throws Exception {
		return dao.checkAuth(userNo);
	}
}
