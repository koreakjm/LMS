package com.lms.service;

import java.util.List;

import com.lms.domain.SearchCriteria;
import com.lms.domain.UserVO;
import com.lms.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO dto) throws Exception;

	public UserVO read(String userNo) throws Exception;

	public boolean checkPw(String userNo, String userPw) throws Exception;

	public void updatePw(UserVO vo) throws Exception;

	// 관리자가 회원 등록
	public void insert(UserVO vo) throws Exception;

	// 관리자화면 회원 목록, 페이징, 검색
	public List<UserVO> listSearch(SearchCriteria cri) throws Exception;

	// 관리자화면 회원 카운트
	public int listSearchCount(SearchCriteria cri) throws Exception;
}
