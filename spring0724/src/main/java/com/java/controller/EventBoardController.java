package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventBoardController {
	
	@RequestMapping("/board/eventList")
	public String eventList() {
		return "board/eventList";
	}
	
	@RequestMapping("/board/eventRead")
	public String eventRead() {
		return "board/eventRead";
	}

}
