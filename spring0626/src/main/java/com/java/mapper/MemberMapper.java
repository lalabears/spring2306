package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper
public interface MemberMapper {

//	MemberDto selectLogin(MemberDto mdto);
	MemberDto selectLogin(String id, String pw);

}
