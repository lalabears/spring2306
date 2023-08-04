package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper
public interface MemberMapper {

	MemberDto selectLogin(String userid, String upw);

	MemberDto selectId(String userid);

	void insertMember(MemberDto mdto);

}
