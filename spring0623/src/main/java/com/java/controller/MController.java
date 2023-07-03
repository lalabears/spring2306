package com.java.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

@Controller

public class MController {
	
	@Autowired
	MemberService memberService;
	
	
	@RequestMapping("/member/memberList")
	public String memberList(Model model) {
		
		ArrayList<MemberDto> list = memberService.memberSelectAll();
		
		model.addAttribute("list",list);
		
		System.out.println(list);
		return "member/memberList";
	}
	
	@RequestMapping("/member/memberView")
	public String memberView(String id, Model model) {
		System.out.println("mContol id" + id);
		
		MemberDto member = memberService.memberSelectOne(id);
		model.addAttribute("member",member);
		
		return "member/memberView";
	}
}