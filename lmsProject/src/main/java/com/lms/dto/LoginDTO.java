package com.lms.dto;

public class LoginDTO {

	private String userNo;
	private String userPw;
	private String userName;
	private boolean useCookie;

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

	public boolean isUseCookie() {
		return useCookie;
	}

	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}

	@Override
	public String toString() {
		return "LoginDTO [userNo=" + userNo + ", userPw=" + userPw + ", userName=" + userName + ", useCookie="
				+ useCookie + "]";
	}

}
