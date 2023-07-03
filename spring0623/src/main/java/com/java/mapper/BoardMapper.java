package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;

@Mapper
public interface BoardMapper {

	// 회원전체 가져오기 
	ArrayList<MemberDto> memberSelectAll();

	MemberDto memberSelectOne(String id);

}
