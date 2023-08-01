package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired 
	MemberMapper memberMapper;

	@Override
	public ArrayList<MemberDto> selectAll() {
		
		ArrayList<MemberDto> list = new ArrayList<>();
		
		
		list = memberMapper.selectAll();
		return list;
	}

	@Override
	public MemberDto selectLogin(MemberDto member) {
		
		MemberDto mdto = memberMapper.selectLogin(member);
		
		return mdto;
	}

	@Override
	public MemberDto selectId(String id) {
		MemberDto mdto = memberMapper.selectId(id);
		return mdto;
	}

	
	@Override
	public String insertMember(MemberDto member) {
		
		MemberDto mdto = memberMapper.selectId(member.getId());
		if (mdto == null ) {
			memberMapper.insertMember(member);
			return "success";
		}
		else {
			return "fail";
		}
	}

	@Override
	public ArrayList<MemberDto> selectMale(MemberDto member) {
		ArrayList<MemberDto> list = new ArrayList<>();
		
		list = memberMapper.selectMale(member);
		return list;
	}
	
	@Override
	public ArrayList<MemberDto> selectH(MemberDto member) {
		ArrayList<MemberDto> list = new ArrayList<>();
		String[] h = member.getHobbies();
		
		System.out.println(h[0]);
		list = memberMapper.selectH(member);
		return list;
	}

	@Override
	public ArrayList<MemberDto> selectGolf(MemberDto mdto, String str) {
		ArrayList<MemberDto> list = new ArrayList<>();
		
		list = memberMapper.selectGolf(mdto,str);
		return list;
	}

	
	
	

}
