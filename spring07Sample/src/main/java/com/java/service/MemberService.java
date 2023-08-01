package com.java.service;

import java.util.ArrayList;

import com.java.dto.MemberDto;

public interface MemberService {

	ArrayList<MemberDto> selectAll();

	MemberDto selectLogin(MemberDto member);

	MemberDto selectId(String id);

	String insertMember(MemberDto member);

	ArrayList<MemberDto> selectMale(MemberDto member);
	ArrayList<MemberDto> selectH(MemberDto member);

	ArrayList<MemberDto> selectGolf(MemberDto mdto, String str);





}
