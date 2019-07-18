package com.lms.service;

import java.util.List;

import com.lms.domain.BoardVO;
import com.lms.domain.SearchCriteria;

public interface BoardService {

	public void register(BoardVO board) throws Exception;

	public BoardVO read(int boardNo) throws Exception;

	public void modify(BoardVO boardNo) throws Exception;

	public void remove(int boardNo) throws Exception;

	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;

	public int listSearchCount(SearchCriteria cri) throws Exception;


}