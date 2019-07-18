package com.lms.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lms.domain.BoardVO;
import com.lms.domain.SearchCriteria;
import com.lms.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDAO dao;

	@Override
	public void register(BoardVO board) throws Exception {
		dao.regist(board);
	}

	@Override
	public BoardVO read(int boardNo) throws Exception {
		dao.updateViewCnt(boardNo);
		return dao.read(boardNo);
	}

	@Override
	public void modify(BoardVO board) throws Exception {

		dao.modify(board);

	}

	@Override
	public void remove(int boardNo) throws Exception {

		dao.remove(boardNo);
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearchCriteria(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.SearchCountCiteria(cri);
	}

}
