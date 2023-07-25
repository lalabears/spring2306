package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.IncomeDto;

@Mapper
public interface IncomeMapper {

	ArrayList<IncomeDto> selectAll();

}
