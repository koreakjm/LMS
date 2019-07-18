package com.lms.persistence;

import java.util.Date;
import java.util.List;

import com.lms.domain.LabListVO;

public interface LabListDAO {
	
	//신청 시작 시간 가져오기
	public Date getTime() throws Exception;
	
	//실습실 현황에서 신청버튼을 클릭할 시
	public void labJoin(LabListVO labList) throws Exception;
	
	//실습실 메인화면
	public List<LabListVO> labListAll() throws Exception;
	
	//실습실 현황에서 참여버튼을 클릭할 시
	public void labApply(LabListVO labList) throws Exception;
	
	
	//실습실 현황에서 반납버튼을 클릭할 시
	public void labReturn(LabListVO labList) throws Exception;
	
	public LabListVO readlabList(int labListNo) throws Exception;
	
}
