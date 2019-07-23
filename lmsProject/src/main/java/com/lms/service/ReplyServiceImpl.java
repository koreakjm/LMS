package com.lms.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

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

}
