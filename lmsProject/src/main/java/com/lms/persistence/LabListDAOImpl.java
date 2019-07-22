package com.lms.persistence;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lms.domain.LabListVO;

@Repository
public class LabListDAOImpl implements LabListDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.lms.mapper.LabListMapper";
	
	@Override
	public Date getTime() throws Exception {
		return session.selectOne(namespace+".getTime");
	}
	
	@Override
	public void labJoin(LabListVO labList) throws Exception {
			
		//statement : 내가 사용할 쿼리문, id값
		session.insert(namespace+".labJoin", labList);
	}

	@Override
	public List<LabListVO> labListAll() throws Exception {
		
		return session.selectList(namespace+".labListAll");
	}

	@Override
	public void labApply(LabListVO labList) throws Exception {
		
		session.insert(namespace+".labApply", labList);
	}

	@Override
	public void labReturn(LabListVO labList) throws Exception {
	
		session.update(namespace+".labReturn", labList);
	}

	
}
