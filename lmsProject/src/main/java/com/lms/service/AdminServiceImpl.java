package com.lms.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lms.domain.LabListVO;
import com.lms.domain.SearchCriteria;
import com.lms.dto.ExcelDTO;
import com.lms.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private AdminDAO dao;

	@Override
	public List<LabListVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearchCriteria(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.SearchCountCiteria(cri);
	}

	@Override
	public List<ExcelDTO> listExcelCriteria(SearchCriteria cri) throws Exception {
		return dao.listExcelCriteria(cri);
	}
}
