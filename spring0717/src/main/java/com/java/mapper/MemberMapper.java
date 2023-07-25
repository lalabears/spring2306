package com.java.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper
public interface MemberMapper {


	MemberDto selectOne(String id, String pw);

	MemberDto selectId(String id);

}
