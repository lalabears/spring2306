package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.CustomerDto;

@Mapper
public interface CustomerMapper {

	ArrayList<CustomerDto> selectAll();

}
