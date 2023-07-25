package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.service.EmailService;

@Controller
public class EmailController {
	
	@Autowired EmailService emailService;
	
	@RequestMapping("/email/emailSend")
	@ResponseBody
	public String emailSend(String name, String email) {
		
		System.out.println(name);
		System.out.println(email);
		
		String pwCode = emailService.insertPwCode(name,email);
		
		return pwCode;
	}
	@RequestMapping("/member/idsearch")
	public String idsearch() {
		return "member/idsearch";
	}

}