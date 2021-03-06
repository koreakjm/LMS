package com.lms.dto;

public class AuthDTO {

	private String myAuthority;
	private String myLabListNo;
	private String myLabNo;

	public String getMyAuthority() {
		return myAuthority;
	}

	public void setMyAuthority(String myAuthority) {
		this.myAuthority = myAuthority;
	}

	public String getMyLabListNo() {
		return myLabListNo;
	}

	public void setMyLabListNo(String myLabListNo) {
		this.myLabListNo = myLabListNo;
	}

	public String getMyLabNo() {
		return myLabNo;
	}

	public void setMyLabNo(String myLabNo) {
		this.myLabNo = myLabNo;
	}

	@Override
	public String toString() {
		return "AuthDTO [myAuthority=" + myAuthority + ", myLabListNo=" + myLabListNo + ", myLabNo=" + myLabNo + "]";
	}

}
