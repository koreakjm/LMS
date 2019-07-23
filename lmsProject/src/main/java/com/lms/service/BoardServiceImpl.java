package com.lms.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lms.domain.BoardVO;
import com.lms.domain.FileVO;
import com.lms.domain.SearchCriteria;
import com.lms.persistence.BoardDAO;
import com.lms.persistence.FileDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAO dao;

	@Inject
	FileDAO fDao;

	@Override
	public void register(BoardVO board) throws Exception {

		// 1. 텍스트에어리어 줄바꿈 적용
		board.setBoardContent(board.getBoardContent().replace("\\r\\n", "<br>"));

		// 2. 기본 신청 내역 등록 (파일 등록 x) -> 등록된 신청내역의 PK 가져오기
		int boardNo = dao.regist(board);
		System.out.println("boardNo =====> " + boardNo);

		// 4. 추가 이미지 존재 여부 IF문
		if (board.getFiles() != null) {

			// 4. 추가 이미지 저장 FOR문
			for (int i = 0; i < board.getFiles().length; i++) {

				// 4-1.추가 이미지 저장

				FileVO fVo = new FileVO();
				fVo.setBoardNo(boardNo);
				fVo.setFileName(board.getFiles()[i]);

				System.out.println("fVo : " + fVo.toString());

				// 4-2.추가 이미지 저장
				fDao.insert(fVo);

			}
		}

	}

	@Override
	public BoardVO read(int boardNo) throws Exception {
		dao.updateViewCnt(boardNo);
		return dao.read(boardNo);
	}

	@Override
	public void modify(BoardVO board) throws Exception {

		// 1. 텍스트에어리어 줄바꿈 적용
		board.setBoardContent(board.getBoardContent().replace("\\r\\n", "<br>"));

		// 2. 기본 신청 내역 등록 (파일 등록 x) -> 등록된 신청내역의 PK 가져오기
		int boardNo = dao.regist(board);
		System.out.println("boardNo =====> " + boardNo);

		// 4. 추가 이미지 존재 여부 IF문
		if (board.getFiles() != null) {

			// 4. 추가 이미지 저장 FOR문
			for (int i = 0; i < board.getFiles().length; i++) {

				// 4-1.추가 이미지 저장

				FileVO fVo = new FileVO();
				fVo.setBoardNo(boardNo);
				fVo.setFileName(board.getFiles()[i]);

				System.out.println("fVo : " + fVo.toString());

				// 4-2.추가 이미지 저장
				fDao.insert(fVo);

			}
		}

	}

	@Override
	public void remove(int boardNo) throws Exception {

		dao.remove(boardNo);
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearchCriteria(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.SearchCountCiteria(cri);
	}

	@Override
	public List<BoardVO> selectThreeBoard() throws Exception {
		return dao.selectThreeBoard();
	}

	@Override
	public List<FileVO> fileList(int boardNo) throws Exception {

		return fDao.list(boardNo);
	}

	@Override
	public void deleteFile(int boardNo) throws Exception {

		fDao.delete(boardNo);

	}

}
