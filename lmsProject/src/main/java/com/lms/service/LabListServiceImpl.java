package com.lms.service;

import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lms.domain.LabListVO;
import com.lms.persistence.LabListDAO;

@Service
public class LabListServiceImpl implements LabListService {

	@Inject
	LabListDAO dao;

	@Override
	public Date getTime() throws Exception {
		return dao.getTime();
	}

	@Override
	public List<LabListVO> labListAll() throws Exception {
		return dao.labListAll();
	}

	@Override
	public int labApply(LabListVO labList) throws Exception {

		// 1.학생 참여
		dao.labApply(labList);

		// 2.학생 참여 인원 확인
		int cnt = dao.labCount();

		return cnt;
	}

	@Override
	public int labReturn(LabListVO labList) throws Exception {
		// 1.학생 퇴실
		dao.labReturn(labList);

		// 2.학생 참여 인원 확인
		int cnt = dao.labCount();

		return cnt;

	}
}
