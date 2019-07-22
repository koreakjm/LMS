package com.lms.service;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lms.domain.LabListVO;
import com.lms.persistence.LabListDAO;

@Service
public class LabListServiceImpl implements LabListService{
	
	@Inject LabListDAO dao;
	
	@Override
	public Date getTime() throws Exception {
		return dao.getTime();
	}

	@Override
	public void labJoin(LabListVO labList) throws Exception {
		dao.labJoin(labList);
	}

	@Override
	public List<LabListVO> labListAll() throws Exception {
		return dao.labListAll();
	}

	@Override
	public void labApply(LabListVO labList) throws Exception {
		dao.labApply(labList);
	}

	@Override
	public void labReturn(LabListVO labList) throws Exception {
		dao.labReturn(labList);
		
	}
}
