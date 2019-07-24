package com.lms.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lms.domain.Criteria;
import com.lms.domain.ReplyVO;
import com.lms.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;

	@Override
	public void addReply(ReplyVO vo) throws Exception {

		dao.create(vo);
	}

	@Override
	public List<ReplyVO> listReply(int boardNo) throws Exception {

		return dao.list(boardNo);

	}

	@Override
	public void modifyReply(ReplyVO vo) throws Exception {

		dao.update(vo);

	}

	@Override
	public void removeReply(int replyNo) throws Exception {

		dao.delete(replyNo);

	}

	@Override
	public List<ReplyVO> listReplyPage(int boardNo, Criteria cri) throws Exception {

		return dao.listPage(boardNo, cri);
	}

	@Override
	public int count(int boardNo) throws Exception {

		return dao.count(boardNo);
	}

}
