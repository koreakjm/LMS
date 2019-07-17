package com.lms.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lms.domain.SearchCriteria;
import com.lms.domain.UserVO;
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
		map.put(userNo, userNo);
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

	//회원 등록
	@Override
	public void insert(UserVO vo) throws Exception {

		session.insert(namespace + ".insert", vo);

	}

	// 회원 목록, 검색, 페이징
	@Override
	public List<UserVO> listSearch(SearchCriteria cri) throws Exception {
		
		return session.selectList(namespace+".listSearch", cri);
	}

	// 회원 카운트
	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		
		return session.selectOne(namespace+".listSearchCount", cri);
	}

}
