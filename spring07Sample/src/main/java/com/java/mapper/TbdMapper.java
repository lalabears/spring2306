package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.MemberDto;
import com.java.dto.TbdDto;

@Mapper
public interface TbdMapper {

	void insertVal(TbdDto tDto);



}
