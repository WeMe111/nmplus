package com.nmplus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nmplus.mapper.BoardMapper;
import com.nmplus.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	/* 게시판 등록 */
	@Override
	public void write(BoardVO board) {

		mapper.write(board);

	}

	/* 게시판 목록 */
	@Override
	public List<BoardVO> getList() {

		return mapper.getList();
	}

	/* 게시판 조회 */
	@Override
	public BoardVO viewPage(int bno){

		return mapper.viewPage(bno);
	}

	/* 게시판 수정 */
	@Override
	public int modify(BoardVO board) {

		return mapper.modify(board);
	}
}
