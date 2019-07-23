package com.lms.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lms.domain.BoardVO;
import com.lms.domain.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.lms.mapper.BoardMapper";

	@Override
	public int regist(BoardVO board) throws Exception {
		
		session.insert(namespace + ".regist", board);
		
		return board.getBoardNo();

	}

	@Override
	public BoardVO read(int boardNo) throws Exception {
		return session.selectOne(namespace + ".read", boardNo);
	}

	@Override
	public int modify(BoardVO board) throws Exception {

		session.update(namespace + ".modify", board);
		
		return board.getBoardNo();

	}

	// @Override
	// public void remove(int boardNo) throws Exception {
	//
	// session.delete(namespace + ".remove", boardNo);
	// }

	@Override
	public void remove(Integer boardNo) throws Exception {

		session.delete(namespace + ".remove", boardNo);
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int SearchCountCiteria(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}
	
	@Override
	public void updateViewCnt(int boardNo) throws Exception {

		session.update(namespace + ".updateViewCnt", boardNo);

	}

	@Override
	public List<BoardVO> selectThreeBoard() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".selectThreeBoard");
	}

	@Override
	public void addAttach(String fullName) throws Exception {
		
		session.insert(namespace + ".addAttach", fullName);
		
	}

}
