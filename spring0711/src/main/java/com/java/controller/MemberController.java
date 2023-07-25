package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	
	@GetMapping("/member/login")
	public String login() {
		return "member/login";
	}
	@GetMapping("/member/step03")
	public String step03() {
		return "member/step03";
	}
	@PostMapping("/member/step03")
	public String step03(Model model) {
		return "member/step04";
	}

	@RequestMapping("/member/step04")
	public String step04() {
		return "member/step04";
	}

}
