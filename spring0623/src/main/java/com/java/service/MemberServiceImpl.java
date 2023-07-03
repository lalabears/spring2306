package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.mapper.BoardMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	BoardMapper boardMapper; 
	
	
	@Override
	public ArrayList<MemberDto> memberSelectAll() {
		
		ArrayList<MemberDto> list = boardMapper.memberSelectAll();
		
		return list;
	}


	@Override
	public MemberDto memberSelectOne(String id) {
		
		MemberDto member = boardMapper.memberSelectOne(id);
		return member;
	}

}
