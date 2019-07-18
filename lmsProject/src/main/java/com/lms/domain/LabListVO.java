package com.lms.domain;

import java.util.Date;

/*CREATE TABLE TBL_LAB_LIST (
	    LAB_LIST_NO NUMBER NOT NULL,
	    STARTTIME DATE NULL,
	    ENDTIME DATE NULL,
	    AUTHORITY VARCHAR2(10) NOT NULL,
	    LAB_NO NUMBER NOT NULL,
	    USER_NO NUMBER NOT NULL,
	    PRIMARY KEY (LAB_LIST_NO)
	);
*/
public class LabListVO {
	
	private int labListNo;
	private Date startTime;
	private Date endTime;
	private String authority;
	private int labNo;
	private String userNo;
	private String userName;
	public int getLabListNo() {
		return labListNo;
	}
	public void setLabListNo(int labListNo) {
		this.labListNo = labListNo;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	public int getLabNo() {
		return labNo;
	}
	public void setLabNo(int labNo) {
		this.labNo = labNo;
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
	@Override
	public String toString() {
		return "LabListVO [labListNo=" + labListNo + ", startTime=" + startTime + ", endTime=" + endTime
				+ ", authority=" + authority + ", labNo=" + labNo + ", userNo=" + userNo + ", userName=" + userName
				+ "]";
	}
}
