package com.lms.service;

import java.util.List;

import com.lms.domain.ReplyVO;

public interface ReplyService {

	public void addReply(ReplyVO vo) throws Exception;

	public List<ReplyVO> listReply(int boardNo) throws Exception;

}
