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
	public void regist(BoardVO board) throws Exception {
		session.insert(namespace + ".regist", board);

	}

	@Override
	public BoardVO read(int boardNo) throws Exception {
		return session.selectOne(namespace + ".read", boardNo);
	}

	@Override
	public void modify(BoardVO vo) throws Exception {

		session.update(namespace + ".modify", vo);

	}

//	@Override
//	public void remove(int boardNo) throws Exception {
//
//		session.delete(namespace + ".remove", boardNo);
//	}
	
	   @Override
	   public void remove(Integer boardNo) throws Exception {

	      session.delete(namespace+".remove", boardNo);
	   }

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return session.selectList(namespace + ".listSearch", cri);
	}

	@Override
	public int SearchCountCiteria(SearchCriteria cri) throws Exception {
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	public void updateViewCnt(int boardNo) throws Exception {

		session.update(namespace + ".updateViewCnt", boardNo);

	}

}
