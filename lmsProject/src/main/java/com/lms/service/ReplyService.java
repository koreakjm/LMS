package com.lms.service;

import java.util.List;

import com.lms.domain.Criteria;
import com.lms.domain.ReplyVO;

public interface ReplyService {

	public void addReply(ReplyVO vo) throws Exception;

	public List<ReplyVO> listReply(int boardNo) throws Exception;

	public void modifyReply(ReplyVO vo) throws Exception;

	public void removeReply(int replyNo) throws Exception;

	public List<ReplyVO> listReplyPage(int boardNo, Criteria cri) throws Exception;

	public int count(int boardNo) throws Exception;

}
