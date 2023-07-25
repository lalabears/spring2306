package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.CustomerDto;
import com.java.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired CustomerService customerService;

	@RequestMapping("/customer/notice")
	public String notice(Model model) {
		ArrayList<CustomerDto> list = customerService.selectAll();
		model.addAttribute("list",list);
		return "customer/notice";
	}

}
