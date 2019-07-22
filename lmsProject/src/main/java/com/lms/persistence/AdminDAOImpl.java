package com.lms.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lms.domain.LabListVO;
import com.lms.domain.SearchCriteria;

@Repository
public class AdminDAOImpl implements AdminDAO{
	@Inject
	private SqlSession session;

	private static String namespace = "com.lms.mapper.AdminMapper";
	
	@Override
	public List<LabListVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int SearchCountCiteria(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}
}
