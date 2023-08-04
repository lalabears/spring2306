package com.java.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.EventBoardDto;
import com.java.dto.PageDto;
import com.java.service.EventBoardService;

@Controller
public class EventBoardController {
	
	@Autowired EventBoardService eventBoardService;
	
	
	@RequestMapping("/board/eventList")
	public String eventList(Model model, PageDto pageDto) {
		System.out.println("BoardController page : "+pageDto.getPage());
		
		HashMap<String, Object> map = eventBoardService.selectAllEventBoard(pageDto);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("pageDto",map.get("pageDto"));
		return "board/eventList";
	}
	
	@RequestMapping("/board/eventRead")
	public String eventRead(int ebno, Model model, PageDto pageDto) {
		System.out.println("ebno :"+ebno);
		HashMap<String, Object> map = eventBoardService.selectOneEventBoard(ebno, pageDto);
		model.addAttribute("list", map.get("ebdto"));
		model.addAttribute("prev", map.get("prev"));
		model.addAttribute("next", map.get("next"));
		return "board/eventRead";
	}

}
