package com.java.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.Member;
import com.java.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	@Override
	public Member insertMember(Member mdto) {
		
		Member member = new Member();
		member.setId(mdto.getId());
		member.setPw(mdto.getPw());
		member.setName(mdto.getName());
		member.setPhone(mdto.getPhone());
		member.setGender(mdto.getGender());
		member.setHobby(mdto.getHobby());
		
		memberMapper.save(member);
		System.out.println("성공");
		return member;
	}

}
