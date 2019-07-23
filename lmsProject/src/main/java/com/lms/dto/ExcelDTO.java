package com.lms.dto;

public class ExcelDTO {

	private String no;
	private String userNo;
	private String userName;
	private String startTime;
	private String endTime;
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
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
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	@Override
	public String toString() {
		return "ExcelDTO [no=" + no + ", userNo=" + userNo + ", userName=" + userName + ", startTime=" + startTime
				+ ", endTime=" + endTime + "]";
	}
	
	


}
