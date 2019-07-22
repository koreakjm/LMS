package com.lms.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lms.domain.LabListVO;
import com.lms.domain.SearchCriteria;
import com.lms.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{
	
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
	public List<Object> getLabLists(String target, Map<String, Object> searchMap) {
		
		 //controller에서 넘어온 target에 따라서 dao 실행을 구분
        if(target.equals("searchMap")){
            return dao.getLabLists(searchMap);
        }
		
		return null;
	}
}
	
	

