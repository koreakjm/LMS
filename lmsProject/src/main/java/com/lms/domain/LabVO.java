package com.lms.domain;

/*CREATE TABLE TBL_LAB (
	    LAB_NO NUMBER NOT NULL,
	    LOCATION VARCHAR2(15) NOT NULL,
	    EQUIPMENT VARCHAR2(15) NULL,
	    PRIMARY KEY (LAB_NO)
	);*/


public class LabVO {
	
	public int labNo;
	public String location;
	public String equipment;
	public int getLabNo() {
		return labNo;
	}
	public void setLabNo(int labNo) {
		this.labNo = labNo;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getEquipment() {
		return equipment;
	}
	public void setEquipment(String equipment) {
		this.equipment = equipment;
	}
	@Override
	public String toString() {
		return "LabVO [labNo=" + labNo + ", location=" + location + ", equipment=" + equipment + "]";
	}
	
	

}
