package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.Member;
import com.java.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@GetMapping("/member/join")
	public String join() {
		System.out.println("get join");
		return "member/join";
	}
	@PostMapping("/member/join")
	public String join(Member mdto) {
		System.out.println("post join");
		System.out.println("id : "+mdto.getId());
		System.out.println("pw : "+mdto.getPw());
		
		Member memberDto = memberService.insertMember(mdto);

		return "member/join";
	}

}
