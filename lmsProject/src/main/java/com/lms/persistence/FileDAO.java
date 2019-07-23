package com.lms.persistence;

import java.util.List;

import com.lms.domain.FileVO;

public interface FileDAO {

	// 1. ���� ���ε�
	public void insert(FileVO fVo) throws Exception;
	
	// 2. 파일 삭제
	public void delete(int boardNo) throws Exception;
	
	// 3. 파일 목록
	public List<FileVO> list(int boardNo) throws Exception;
	
}
