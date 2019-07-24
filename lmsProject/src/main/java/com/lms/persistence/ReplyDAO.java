package com.lms.persistence;

import java.util.List;

import com.lms.domain.Criteria;
import com.lms.domain.ReplyVO;

public interface ReplyDAO {

	public List<ReplyVO> list(int boardNo) throws Exception;

	public void create(ReplyVO vo) throws Exception;

	public void update(ReplyVO vo) throws Exception;

	public void delete(int replyNo) throws Exception;

	public List<ReplyVO> listPage(int boardNo, Criteria cri) throws Exception;

	public int count(int boardNo) throws Exception;

}
