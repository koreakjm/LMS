package com.lms.domain;

/*CREATE TABLE TBL_USER (
	    USER_NO NUMBER NOT NULL,
	    USER_PW VARCHAR2(30) NOT NULL,
	    USER_NAME VARCHAR2(15) NOT NULL,
	    STATE VARCHAR2(10) NOT NULL,
	    AUTHORITY VARCHAR2(10) NOT NULL,
	    REG_NUM NUMBER NOT NULL, -- 시퀀스
	    PRIMARY KEY (USER_NO)
	);*/

public class UserVO {

	private String userNo;
	private String userPw;
	private String userName;
	private String state;
	private String authority;
	private int regNum;
	public String getUserNo() {
		return userNo;
	}
	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public int getRegNum() {
		return regNum;
	}
	public void setRegNum(int regNum) {
		this.regNum = regNum;
	}
	@Override
	public String toString() {
		return "UserVO [userNo=" + userNo + ", userPw=" + userPw + ", userName=" + userName + ", state=" + state
				+ ", authority=" + authority + ", regNum=" + regNum + "]";
	}

	

}
