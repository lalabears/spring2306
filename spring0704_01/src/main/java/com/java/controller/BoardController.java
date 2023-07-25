package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService boardService;
	
	@RequestMapping("/board/blist")
	public String blist() {
		System.out.println("get boardlist");
		return "board/blist";
	}
	

}
