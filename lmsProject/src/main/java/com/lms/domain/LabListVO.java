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
	
	public int labListNo;
	public Date startTime;
	public Date endTime;
	public String authority;
	public int labNo;
	public int userNo;
	public String userName;
	
	
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


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
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
