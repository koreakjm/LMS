package com.lms.persistence;

import java.util.List;

import com.lms.domain.BoardVO;
import com.lms.domain.SearchCriteria;

public interface BoardDAO {
	
	// ��Խ��� �Խñ� ���//
	public void regist(BoardVO board) throws Exception;
	
	// ��Խ��� �Խñ� �󼼺���//
	public BoardVO read(int boardNo) throws Exception;
	
	// ��Խ��� �Խñ� ����//
	public void modify(BoardVO board) throws Exception;
	
	// ��Խ��� �Խñ� ����//
	public void remove(int boardNo) throws Exception;
	
	// ��Խ��� �Խñ� �˻�, ����¡//
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	
	// ��Խ��� �Խñ� �˻�, ����¡, ����//
	public int SearchCountCiteria(SearchCriteria cri) throws Exception;

}
