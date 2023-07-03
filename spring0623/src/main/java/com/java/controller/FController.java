package com.java.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FController {

	@Autowired
	HttpSession session;
	
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	
	@RequestMapping("/logout")
	public String logout( Model model) {
		
		// 세션 전체 삭제 
		session.invalidate();
		
		
		model.addAttribute("logout", 1);
		
		
		
		return "logoutCheck";
	}
	
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	@RequestMapping("/doLogin")
	public String doLogin(String id, String pw, Model model) {
			//,HttpServletRequest request) {
		
		System.out.println("id"+id);
		System.out.println("pw"+pw);
		
		// db 검색
		if(id.equals("admin") && pw.equals("1111")) {
			
			//HttpSession session = request.getSession();
			
			//autowired로 객체를 바로 받음
			session.setAttribute("sessionId", id);
			model.addAttribute("loginCheck", 1);

		}else {
			
			model.addAttribute("loginCheck", 0);
		}
		
		
		return "loginCheck";
	}
}
