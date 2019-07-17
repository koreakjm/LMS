package com.lms.persistence;

import java.util.List;

import com.lms.domain.SearchCriteria;
import com.lms.domain.UserVO;
import com.lms.dto.LoginDTO;

public interface UserDAO {
	
	//로그인
	public UserVO login(LoginDTO dto) throws Exception;
	
	//회원 정보 상세보기
	public UserVO read(String userNo) throws Exception;
	
	//비밀번호 변경 확인
	public boolean checkPw(String userNo, String userPw) throws Exception;
	
	//비밀번호 변경
	public void updatePw(UserVO vo) throws Exception;
	
	//관리자가 회원 등록
	public void insert(UserVO vo) throws Exception;
	
	//관리자화면 회원 목록, 페이징, 검색
	public List<UserVO> listSearch(SearchCriteria cri) throws Exception;
	
	//관리자화면 회원 카운트
	public int listSearchCount(SearchCriteria cri) throws Exception;
	
	//관리자 회원 수정
	public void update(UserVO vo) throws Exception;
	
	//관리자 회원 삭제
	public void delete(String userNo) throws Exception;

}
