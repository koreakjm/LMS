package com.lms.domain;

import java.util.Date;

/*CREATE TABLE TBL_REPLY (
	    REPLY_NO NUMBER NOT NULL,
	    REGDATE DATE NULL,
	    UPDATEDATE DATE NULL,
	    BOARD_NO NUMBER NOT NULL,
	    USER_NO NUMBER NOT NULL,
	    PRIMARY KEY (REPLY_NO)
	);*/

public class ReplyVO {

	public int replyNo;
	public int regdate;
	public Date updatedate;
	public int boardNo;
	public int userNo;
	public int getReplyNo() {
		return replyNo;
	}
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	public int getRegdate() {
		return regdate;
	}
	public void setRegdate(int regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	@Override
	public String toString() {
		return "ReplyVO [replyNo=" + replyNo + ", regdate=" + regdate + ", updatedate=" + updatedate + ", boardNo="
				+ boardNo + ", userNo=" + userNo + "]";
	}
	
	
}
