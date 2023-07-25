package com.java.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired HttpSession session;
	@Autowired MemberService memberService;
	
	@RequestMapping("/member/logout")
	public String logout() {
		session.invalidate(); // 세션 모두 삭제 
		return "redirect:/index";
	}
	@GetMapping("/member/login")
	public String login() {
		return "member/login";
	}
	@PostMapping("/member/login")
	public String login(@RequestParam(value="id", defaultValue="admin")String id,
			@RequestParam(value="pw", defaultValue="1")String pw, Model model) {
		
		System.out.println("controller id and pw : " + id + ", " + pw);
		
		String resultCode = memberService.selectOne(id,pw);
		
		if(resultCode.equals("s_login")) {
		  
		   return "redirect:/?resultCode="+resultCode;  
		}
		else {
		
			model.addAttribute("resultCode",resultCode);
			return "member/login";
		}
	}
	
	@RequestMapping("/member/join01")
	public String join01() {
		return "member/join01";
	}
	@RequestMapping("/member/join02_info")
	public String join02() {
		return "member/join02_info";
	}
	@RequestMapping("/member/join03")
	public String join03() {
		return "member/join03";
	}
	
	@GetMapping("/member/memberModify")
	public String memberModify(Model model) {
		
		String id = (String)session.getAttribute("sessionId");
		MemberDto mdto = memberService.selectId(id);
		model.addAttribute("mdto",mdto);
		return "member/memberModify";
	}
	
	

}
