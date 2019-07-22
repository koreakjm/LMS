package com.lms.domain;

import java.util.Arrays;
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
	private String userNo;
	private String userName;
	private String[] files;

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

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "BoardVO [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", regdate=" + regdate + ", viewCnt=" + viewCnt + ", category=" + category + ", userNo=" + userNo
				+ ", userName=" + userName + ", files=" + Arrays.toString(files) + "]";
	}

}
