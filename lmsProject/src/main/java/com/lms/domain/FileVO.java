package com.lms.domain;

/*CREATE TABLE TBL_FILE
(
	FILE_NAME            VARCHAR2(100) NOT NULL ,
	FILE_NO              NUMBER NOT NULL ,
	APPLY_NO             NUMBER NOT NULL 
);*/

public class FileVO {

	private int fileNo;
	private int boardNo;
	private String fileName;
	private String fileLocation;

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileLocation() {
		return fileLocation;
	}

	public void setFileLocation(String fileLocation) {
		this.fileLocation = fileLocation;
	}

	@Override
	public String toString() {
		return "FileVO [fileNo=" + fileNo + ", boardNo=" + boardNo + ", fileName=" + fileName + ", fileLocation="
				+ fileLocation + "]";
	}

}
