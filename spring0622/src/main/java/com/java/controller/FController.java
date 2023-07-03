package com.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.BoardDto;
import com.java.service.BService;
import com.java.service.BServiceImpl;
import com.java.service.BServiceImpl2;


@Controller
public class FController {
	
	@Autowired
	BoardDto bdto; // 객체선언이 없다. 
	
	@Autowired
	BService bService; //= new BServiceImpl(); // 다형성 
	//BServiceImpl bServiceImpl = new BServiceImpl(); // 다형성 
	//BService bServiceImpl2 = new BServiceImpl2(); // 다형성 

	@RequestMapping("/index")
	public String index() {
		
		System.out.println(bdto);
		return "index";
	}
	

	
	
}




