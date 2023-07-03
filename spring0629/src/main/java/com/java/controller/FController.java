package com.java.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class FController {
	
	@RequestMapping("/index")
	public String index(String loginCheck, Model model) {
		model.addAttribute("loginCheck",loginCheck);
		return "index";
	}



}