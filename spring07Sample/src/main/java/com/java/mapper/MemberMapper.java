package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper
public interface MemberMapper {

	ArrayList<MemberDto> selectAll();

	MemberDto selectLogin(MemberDto member);

	MemberDto selectId(String id);

	void insertMember(MemberDto member);

	ArrayList<MemberDto> selectMale(MemberDto member);
	ArrayList<MemberDto> selectH(MemberDto member);

	ArrayList<MemberDto> selectGolf(MemberDto mdto, String str);



}
