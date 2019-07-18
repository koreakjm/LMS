package com.lms.service;

import java.util.Date;
import java.util.List;

import com.lms.domain.LabListVO;

public interface LabListService {
	
	//신청 시작 시간 가져오기
	public Date getTime() throws Exception;
	
	public void labJoin(LabListVO labList) throws Exception;
	
	public List<LabListVO> labListAll() throws Exception;
	
	public void labApply(LabListVO labList) throws Exception;
	
	public void labReturn(LabListVO labList) throws Exception;
	
	public LabListVO readlabList(int labListNo) throws Exception;
	
}
