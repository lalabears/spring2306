package com.java.controller;

//import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dto.MemberDto;
import com.java.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired MemberService memberService;
	
	@GetMapping("/member/join")
	public String join() {
		return "member/join";
	}
	
	@PostMapping("/member/join")
	public String join(MemberDto member, Model model) {
		System.out.println("jsp에서 입력한 id : "+member.getId() );
		System.out.println("jsp에서 입력한 pw : "+member.getPw() );
		System.out.println("jsp에서 입력한 pw : "+member.getPhone() );
		System.out.println("jsp에서 입력한 pw : "+member.getName() );
		System.out.println("jsp에서 입력한 pw : "+member.getGender() );
		System.out.println("jsp에서 입력한 pw : "+member.getHobby() );
		System.out.println("jsp에서 입력한 b : "+member.getBday() );
		
		
		// String day = member.getBday() + " 00:00:00";	
		//Timestamp date= Timestamp.valueOf(day); 
		//member.setBirth(date);
		
		
		// 문자열
		String dateStr = "2023-07-18T12:21";
		// 포맷터
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
		// Date 는 import java.util.Date;
		Date dateD = null;
		try {
			
			dateD = formatter.parse(dateStr);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println(dateD);
		java.sql.Date sqlPackageDate = new java.sql.Date(dateD.getTime());
		
		member.setBirth(sqlPackageDate);
		
		
		
		String result =memberService.insertMember(member);
		
		if(result == "success") {
			System.out.println("가입에 성공 ");
			return "member/login";
		}
		else {		
			System.out.println("가입에 실패 ");
			return "member/join";
		}

	}
	
	@PostMapping("/member/checkId")
	@ResponseBody
	public String checkId(String id) {
		// System.out.println("checkID : " + id);
		
		MemberDto mdto = memberService.selectId(id);
		
		if(mdto==null) {
			return "success";
			
		}else {
			return "fail";
		}
	}
	
	
	
	@GetMapping("/member/login")
	public String login() {
		
		return "member/login";
	}
	@PostMapping("/member/login")
	public String login(MemberDto member, Model model) {
		
		System.out.println("jsp에서 입력한 id : "+member.getId());
		System.out.println("jsp에서 입력한 pw : "+member.getPw());
		
		MemberDto mdto = memberService.selectLogin(member);
		
		if(mdto==null) {
			
			return "/member/login";
			
		} else {
			
			System.out.println("db에서 가져온 id : "+mdto.getId());
			System.out.println("db에서 가져온 pw : "+mdto.getPw());
			
		}
		
		return "redirect:/index";
	}
	
	@RequestMapping("/member/mlist")
	public String mlist(Model model) {
		
		
		ArrayList<MemberDto> list = memberService.selectAll();
		model.addAttribute("mlist",list);
		
		return "member/mlist";
	}
	@RequestMapping("/member/mAjax")
	@ResponseBody
	public ArrayList<MemberDto> mAjax() {
		
	
		
		
		ArrayList<MemberDto> list = memberService.selectAll();
		
		return list;
	}
	
	@PostMapping("/member/mlist_male")
	public String mlist_male(Model model) {
		
		
		MemberDto mdto = new MemberDto();
		mdto.setGender("male");
		ArrayList<MemberDto> list = memberService.selectMale(mdto);
		model.addAttribute("mlist",list);
		
		return "member/mlist_male";
	}
	
	@GetMapping("/member/mlist_male")
	public String mlistH(Model model) {
		
		
		MemberDto mdto = new MemberDto();
		String[] hlist = {"game","shopping"};
		mdto.setHobbies(hlist);
		mdto.setHobby("game");
		
		ArrayList<MemberDto> list = memberService.selectH(mdto);
		model.addAttribute("mlist",list);
		
		return "member/mlist_male";
	}
	
	
	@GetMapping("/member/join2")
	public String join2() {
		return "member/join2";
	}
	@PostMapping("/member/join2")
	@ResponseBody
	public String join2(MemberDto mdto) {
		
		
		System.out.println(mdto.getName());
		String str = "golf";
		ArrayList<MemberDto> list = memberService.selectGolf(mdto,str);
		System.out.println(list.get(0).getName());
		return "success";

	}
	
	@PostMapping("/member/upAjax")
	@ResponseBody
	public HashMap<String, Object> upAjax(MemberDto mdto) {
		
		System.out.println(mdto.getName());
		
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = 15; 
		int page = 1; 
		
		int maxPage = (int)Math.ceil((double)listCount/10); // 26/10 3개page
		int startPage = (int)((page-1)/10)*10 + 1;  //1
		int endPage = startPage+10-1;
		int startRow = (page-1)*10+1;  //1page -> 1-10, 2page -> 11-20
		int endRow = startRow+10-1;
		if(endPage>maxPage) endPage=maxPage;
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("page", page);
//		map.put("list", list);
		
		
		
		
		return map;
		
	}

	
	
	@RequestMapping("/member/ListAjax")
	@ResponseBody
	public HashMap<String, Object> ListAjax() {
	
		HashMap<String, Object> map = new HashMap<String,Object>(); 
		int[] a = {1,2,3,4,5,6};
		String[] b = {"a","b","c","d","e","f"};
		
		List<String> listA = new ArrayList<String>();
		listA.add("홍길동"); listA.add("이순신");
		ArrayList<Integer> listB = new ArrayList<>();
		listB.add(10);	listB.add(11);	listB.add(12);	listB.add(13);

		ArrayList<MemberDto> listC = memberService.selectAll();
		
		map.put("a", a);
		map.put("b", b);
		map.put("c", listA);
		map.put("d", listB);
		map.put("e", listC);
		
				
		return map;
	}
	
	
	

}
