package com.nmplus.board;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nmplus.model.BoardVO;
import com.nmplus.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger log = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
    private BoardService bservice;

	@GetMapping("/list")
	// => @RequestMapping(value="list", method=RequestMethod.GET)
	public void boardListGET() {

		log.info("게시판 목록 페이지 진입");

	}
	
	@GetMapping("/write")
	// => @RequestMapping(value="list", method=RequestMethod.GET)
	public void boardwriteGET() {

		log.info("글쓰기 페이지 진입");

	}

	@GetMapping("/enroll")
	// => @RequestMapping(value="enroll", method=RequestMethod.GET)
	public void boardEnrollGET() {

		log.info("게시판 등록 페이지 진입");

	}

	/* 게시판 등록 */
	@PostMapping("/enroll")
	public String boardEnrollPOST(BoardVO board) {

		log.info("BoardVO : " + board);
		
		bservice.enroll(board);
		
		return "redirect:../board/list";

	}

}
