package com.lms.service;

import java.util.List;
import com.lms.domain.LabListVO;
import com.lms.domain.SearchCriteria;
import com.lms.dto.ExcelDTO;

public interface AdminService {

	public List<LabListVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;

	//
	public List<ExcelDTO> listExcelCriteria(SearchCriteria cri) throws Exception;

}
