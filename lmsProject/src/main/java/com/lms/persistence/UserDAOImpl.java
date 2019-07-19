package com.lms.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lms.domain.SearchCriteria;
import com.lms.domain.UserVO;
import com.lms.dto.AuthDTO;
import com.lms.dto.LoginDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Inject
	private SqlSession session;

	private static final String namespace = "com.lms.mapper.UserMapper";

	@Override
	public UserVO login(LoginDTO dto) throws Exception {

		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public UserVO read(String userNo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".read", userNo);
	}

	// 비밀번호 체크
	@Override
	public boolean checkPw(String userNo, String userPw) {

		boolean result = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("userNo", userNo);
		map.put("userPw", userPw);
		int count = session.selectOne(namespace + ".checkPw", map);
		if (count == 1)
			result = true;
		return result;
	}

	// 비밀번호 변경
	@Override
	public void updatePw(UserVO vo) {

		session.update(namespace + ".updatePw", vo);

	}

	// 학생 등록
	@Override
	public void insert(UserVO vo) throws Exception {

		session.insert(namespace + ".insert", vo);

	}

	// 학생 목록, 검색, 페이징
	@Override
	public List<UserVO> listSearch(SearchCriteria cri) throws Exception {
		
		return session.selectList(namespace+".listSearch", cri);
	}

	// 학생 카운트
	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return session.selectOne(namespace+".listSearchCount", cri);
	}

	// 학생 정보 수정
	@Override
	public void update(UserVO vo) throws Exception {

		session.update(namespace + ".update", vo);
	}

	// 학생 정보 삭재
	@Override
	public void delete(String userNo) throws Exception {
		
		session.delete(namespace + ".delete", userNo);
		
	}
	
	// 학생 실습실 권한 확인
	@Override
	public AuthDTO checkAuth(String userNo) throws Exception {
		
		return session.selectOne(namespace + ".authCheck", userNo);
	}


}
