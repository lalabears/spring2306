package com.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin/adminAccount")
	public String adminAccount() {
		return "admin/adminAccount";
	}
	
	@RequestMapping("/admin/adminLogin")
	public String adminLogin() {
		return "admin/adminLogin";
	}

}
