package com.lms.persistence;

import java.util.List;

import com.lms.domain.BoardVO;
import com.lms.domain.SearchCriteria;

public interface BoardDAO {
	
	// 운영게시판 게시글 등록//
	public void regist(BoardVO board) throws Exception;
	
	// 운영게시판 게시글 상세보기//
	public BoardVO read(int boardNo) throws Exception;
	
	// 운영게시판 게시글 수정//
	public void modify(BoardVO board) throws Exception;
	
	// 운영게시판 게시글 삭제//
	public void remove(int boardNo) throws Exception;
	
	// 운영게시판 게시글 검색, 페이징//
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	
	// 운영게시판 게시글 검색, 페이징, 갯수//
	public int SearchCountCiteria(SearchCriteria cri) throws Exception;

}
