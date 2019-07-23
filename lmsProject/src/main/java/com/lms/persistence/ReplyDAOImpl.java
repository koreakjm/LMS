package com.lms.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lms.domain.Criteria;
import com.lms.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "com.lms.mapper.ReplyMapper";

	@Override
	public List<ReplyVO> list(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".list", boardNo);
	}

	@Override
	public void create(ReplyVO vo) throws Exception {
		
		session.insert(namespace + ".create", vo);

	}

	@Override
	public void update(ReplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int replyNo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ReplyVO> listPage(int boardNo, Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int count(int replyNo) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
