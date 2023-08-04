package com.java.controller;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

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
	@Autowired	MemberService memberService; 
	@Autowired  HttpSession session;
	
	// 회원 정보 수정 
	@RequestMapping("/member/modifying")
	public String modifying(Model model) {
		
		String userid="";
		if(session.getAttribute("sessionId")!=null) {
			userid = (String)session.getAttribute("sessionId");
			MemberDto mdto = memberService.selectId(userid);
			
			
			// 이메일 주소 취합 
			String email = mdto.getUemail();
			String[] e = email.split("@");
			mdto.setEmailId(e[0]);
			mdto.setEmailTail(e[1]);			
			
			// 주소 취합 
			String address = mdto.getUaddr();
			String[] a = address.split(",");
			mdto.setZipcode(a[0]);
			mdto.setAddr1(a[1]);
			mdto.setAddr2(a[2]);
			
			
			// 핸드폰 번호 취합 
			String cel = mdto.getUphone();
			String[] cp = cel.split("-");
			mdto.setPhone1(cp[0]);
			mdto.setPhone2(cp[1]);
			mdto.setPhone3(cp[2]);
			
			// 생일 취합 
			long bd = mdto.getUbirth().getTime();
			DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
			String bdstr =format.format(new Date(bd));
			String[] bdsp = bdstr.split("-");
			mdto.setByear(bdsp[0]);
			mdto.setBmonth(bdsp[1]);
			//System.out.println(bdsp[2].substring(0, 2));
			mdto.setBday(bdsp[2].substring(0, 2));
			
			System.out.println(mdto.getByear());
			System.out.println(mdto.getBmonth());
			System.out.println(mdto.getBday());
			
			
			
			
			
			
			model.addAttribute("member",mdto);
			
			
			
			
		}
		// else{			return "member/login";		}
		return "member/modifying";
	}
	
	
	// 가입하기 
	// 1 단계
	@RequestMapping("/member/join01")
	public String join01() {
		return "member/join01";
	}
	
	// 2 단계
	@GetMapping("/member/join02")
	public String join02Get(MemberDto mdto) {
		// 01에서 모두 동의하지 않으면 join01페이지로 보내기 
		//if(mdto.getJoin01()==null) {
		//	return "member/join01";
		//}
		return "member/join02";
	}
	@PostMapping("/member/join02")
	public String join02(MemberDto mdto) {
			
		// 이메일 주소 취합 
		String email = mdto.getEmailId() +"@"+ mdto.getEmailTail();
		mdto.setUemail(email);
		
		// 주소 취합 
		String address = mdto.getZipcode()+","+mdto.getAddr1()+","+mdto.getAddr2();
		mdto.setUaddr(address);
		
		// 핸드폰 번호 취합 
		String cel = mdto.getPhone1()+"-"+mdto.getPhone2()+"-"+mdto.getPhone3();
		mdto.setUphone(cel);
		
		// 생일 취합 
		String bd = mdto.getByear()+"-"+mdto.getBmonth()+"-"+mdto.getBday() + " 00:00:00";
		Timestamp date = Timestamp.valueOf(bd);
		mdto.setUbirth(date);
		
		// 취미 취합
		String hbby = "";
		for( int i = 0 ; i < mdto.getUinterests().length; i++) {
			
			System.out.println(mdto.getUinterests()[i]);
			hbby += mdto.getUinterests()[i] + ",";
		}
		mdto.setUinterest(hbby);
		
		String result = ""; 
		result = memberService.insertMember(mdto);
		
		if(result.equals("success")) {
			mdto.setJoin02("pass02");
			return "member/join03";
		}
		else {
			return "member/join01";
		}
		
	}
	
	@PostMapping("/member/checkId")
	@ResponseBody
	public String checkId(String userid) {
		// System.out.println("checkID : " + id);
		
		MemberDto mdto = memberService.selectId(userid);
		
		if(mdto==null) {
			return "success";
			
		}else {
			return "fail";
		}
	}
	
	
	
	// 3 단계
	@RequestMapping("/member/join03")
	public String join03() {
		return "member/join03";
	}
	
	
	
	
	
	
	
	
	
	// logout 로그아웃
	@RequestMapping("/member/logout")
	public String logout() {
		session.invalidate(); // 세션 모두 삭제 
		return "redirect:/index";
	}
	
	
	// 로그인 login
	@GetMapping("/member/login")
	public String login() {
		return "member/login";
	}
	@PostMapping("/member/login")
	public String login(MemberDto mdto) {
		String userid = mdto.getUserid();
		String upw = mdto.getUpw();
		System.out.println(userid+upw);
		String result="";
		if(userid!=null && upw!=null) {
			result = memberService.selectLogin(userid,upw);
		}
		if(result == "loginSuccess") {
			
			return "redirect:/index";
		}
		
		return "member/login";
		
		
	}

}
