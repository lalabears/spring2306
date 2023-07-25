package com.java.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired HttpSession session;
	@Autowired MemberMapper memberMapper;

	@Override
	public String selectOne(String id, String pw) {
		
		String resultCode = "";
		
		MemberDto mdto = memberMapper.selectOne(id,pw);
		
		System.out.println("membermapper");
		
		if(mdto != null) {
			session.setAttribute("sessionId", mdto.getId());
			session.setAttribute("sessionName", mdto.getName());
			resultCode = "s_login";
		}else {
			resultCode = "f_login";
		}
		return resultCode;
	}

	@Override
	public MemberDto selectId(String id) {
		MemberDto mdto = memberMapper.selectId(id);
		String[] phones = mdto.getPhone().split("-");
		mdto.setPhones(phones);
	
		
		return mdto;
	}

}
