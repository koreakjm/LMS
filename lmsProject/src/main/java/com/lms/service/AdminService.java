package com.lms.service;

import java.util.List;
import com.lms.domain.LabListVO;
import com.lms.domain.SearchCriteria;

public interface AdminService {
	
	public List<LabListVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;
	
}
