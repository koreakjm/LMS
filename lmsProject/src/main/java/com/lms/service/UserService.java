package com.lms.service;

import java.util.List;

import com.lms.domain.BoardVO;
import com.lms.domain.SearchCriteria;
import com.lms.domain.UserVO;
import com.lms.dto.AuthDTO;
import com.lms.dto.LoginDTO;

public interface UserService {

	public UserVO login(LoginDTO dto) throws Exception;

	public UserVO read(String userNo) throws Exception;

	public boolean checkPw(String userNo, String userPw) throws Exception;

	public void updatePw(UserVO vo) throws Exception;

	// 관리자가 학생 등록
	public void insert(UserVO vo) throws Exception;

	// 관리자화면 학생 목록, 페이징, 검색
	public List<UserVO> listSearch(SearchCriteria cri) throws Exception;

	// 관리자화면 학생 카운트
	public int listSearchCount(SearchCriteria cri) throws Exception;

	// 관리자 학생 수정
	public void update(UserVO vo) throws Exception;

	// 관리자 학생 삭제
	public void delete(String userNo) throws Exception;
	
	public AuthDTO checkAuth(String userNo) throws Exception;
	


}	
