package com.lms.domain;

import java.util.Date;

/*CREATE TABLE TBL_BOARD (
	    BOARD_NO NUMBER NOT NULL,
	    BOARD_TITLE VARCHAR2(45) NOT NULL,
	    BOARD_CONTENT VARCHAR2(3000) NOT NULL,
	    REGDATE DATE NULL,
	    VIEWCNT NUMBER NULL,
	    CATEGORY VARCHAR2(25) NOT NULL,
	    BOARD_FILE VARCHAR2(45) NULL,
	    USER_NO NUMBER NOT NULL,
	    PRIMARY KEY (BOARD_NO)
	);*/

public class BoardVO {
	
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private Date regdate;
	private int viewCnt;
	private String category;
	private String boardFile;
	private int userNo;
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public String getBoardContent() {
		return boardContent;
	}
	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBoardFile() {
		return boardFile;
	}
	public void setBoardFile(String boardFile) {
		this.boardFile = boardFile;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	@Override
	public String toString() {
		return "BoardVO [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", regdate=" + regdate + ", viewCnt=" + viewCnt + ", category=" + category + ", boardFile="
				+ boardFile + ", userNo=" + userNo + "]";
	}
	
	
	

}
