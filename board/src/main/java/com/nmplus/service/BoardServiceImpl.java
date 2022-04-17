package com.nmplus.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nmplus.mapper.BoardMapper;
import com.nmplus.model.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardMapper mapper;
	
	@Override
    public void enroll(BoardVO board) {
        
        mapper.enroll(board);
        
    }

}
