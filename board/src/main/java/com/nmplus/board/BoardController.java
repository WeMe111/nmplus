package com.nmplus.board;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nmplus.model.BoardVO;
import com.nmplus.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private static final Logger log = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private BoardService bservice;


	@GetMapping("/write")
	public void boardwriteGET() {

		log.info("글쓰기 페이지 진입");

	}


	/* 게시판 등록 */
	@PostMapping("/write")
	public String boardwritePOST(BoardVO board, RedirectAttributes rttr) {

		log.info("BoardVO : " + board);

		bservice.write(board);

		rttr.addFlashAttribute("result", "write success");

		return "redirect:/board/list";

	}

	/* 게시판 목록 페이지 접속 */
	@GetMapping("/list")
	public void boardListGET(Model model) {

		log.info("게시판 목록 페이지 진입");

		model.addAttribute("list", bservice.getList());

	}
	
	/* 게시판 조회 */
    @GetMapping("/view")
    public void boardViewPageGET(int bno, Model model) {
        
    	log.info("게시판 조회 페이지 진입");
    	
        model.addAttribute("pageInfo", bservice.viewPage(bno));
        
    }
    
    /* 수정 페이지 이동 */
    @GetMapping("/modify")
    public void boardModifyGET(int bno, Model model) {
    	
    	log.info("수정 페이지 진입");
        
        model.addAttribute("pageInfo", bservice.viewPage(bno));
        
    }
    
    /* 페이지 수정 */
    @PostMapping("/modify")
    public String boardModifyPOST(BoardVO board, RedirectAttributes rttr) {
        
        bservice.modify(board);
        
        rttr.addFlashAttribute("result", "modify success");
        
        return "redirect:/board/list";
        
    }

}
