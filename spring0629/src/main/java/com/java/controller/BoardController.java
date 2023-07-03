package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;
import com.java.service.BoardService;

// Controller, RestController(그냥 데이터로 전달해)
@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/board/notice")
	public String notice(Model model) {
		ArrayList<BoardDto> list = new ArrayList<>();
		//게시글 전체 가져오기 
		list = boardService.selectAll();
		model.addAttribute("list",list);
		return "board/notice";
	}
	@RequestMapping("/board/noticeView")
	public String noticeView(int bno, Model model) {
		//게시글 한개 가져오기 
		BoardDto bdto = boardService.selectOne(bno);
		
		// 하단댓글 모두 가져오기 
		
		ArrayList<CommentDto> comlist = boardService.selectComAll(bno);
		
		model.addAttribute("bdto",bdto);
		model.addAttribute("comlist",comlist);
		
		return "board/noticeView";
	}
	
	@RequestMapping("/board/commentInsert")
	// 데이터로 리턴
	@ResponseBody
	public CommentDto commentInsert(CommentDto comdto) {
		CommentDto cdto = boardService.commentInsert(comdto);
		
		return cdto;
	}

}
