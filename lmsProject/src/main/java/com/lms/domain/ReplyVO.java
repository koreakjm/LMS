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

	private int replyNo;
	private Date regdate;
	private String replyText;
	private Date updatedate;
	private int boardNo;
	private String userNo;

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getReplyText() {
		return replyText;
	}

	public void setReplyText(String replyText) {
		this.replyText = replyText;
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

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "ReplyVO [replyNo=" + replyNo + ", regdate=" + regdate + ", replyText=" + replyText + ", updatedate="
				+ updatedate + ", boardNo=" + boardNo + ", userNo=" + userNo + "]";
	}

}
