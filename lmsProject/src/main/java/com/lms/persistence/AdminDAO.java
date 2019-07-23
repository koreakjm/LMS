package com.lms.persistence;

import java.util.List;
import com.lms.domain.LabListVO;
import com.lms.domain.SearchCriteria;
import com.lms.dto.ExcelDTO;

public interface AdminDAO {
	
		// 운영게시판 게시글 검색, 페이징//
		public List<LabListVO> listSearchCriteria(SearchCriteria cri) throws Exception;
		
		// 
		public List<ExcelDTO> listExcelCriteria(SearchCriteria cri) throws Exception;

		// 운영게시판 게시글 검색, 페이징, 갯수//
		public int SearchCountCiteria(SearchCriteria cri) throws Exception;
}
