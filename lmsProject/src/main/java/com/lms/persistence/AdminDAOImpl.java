package com.lms.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lms.domain.LabListVO;
import com.lms.domain.SearchCriteria;
import com.lms.dto.ExcelDTO;

@Repository
public class AdminDAOImpl implements AdminDAO {
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

	@Override
	public List<ExcelDTO> listExcelCriteria(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listexcel", cri);
	}
}
