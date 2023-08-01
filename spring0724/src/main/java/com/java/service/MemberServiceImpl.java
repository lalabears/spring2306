package com.java.service;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;



@Service
public class MemberServiceImpl implements MemberService {

	@Autowired MemberMapper memberMapper;
	@Autowired HttpSession session;
	
	@Override
	public String selectLogin(String userid, String upw) {
		MemberDto mdto = memberMapper.selectLogin(userid,upw);
		
		if(mdto == null ) return "loginFail";
		else {
			session.setAttribute("sessionId", mdto.getUserid());
			session.setAttribute("sessionName", mdto.getUname());
			return "loginSuccess";
		}
		
	}

	@Override
	public MemberDto selectId(String userid) {
		MemberDto mdto = memberMapper.selectId(userid);
		return mdto;
	}

	// 회원가입 
	@Override
	public String insertMember(MemberDto mdto) {
		memberMapper.insertMember(mdto);
		return "success";
	}

}
