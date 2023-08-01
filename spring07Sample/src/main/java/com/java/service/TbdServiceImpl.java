package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.MemberDto;
import com.java.dto.TbdDto;
import com.java.mapper.TbdMapper;

@Service
public class TbdServiceImpl implements TbdService {

	@Autowired TbdMapper tbdMapper;
	@Override
	public String insertVal(TbdDto tDto) {
		tbdMapper.insertVal(tDto);
		String result = "success";
		
		
		return result;
	}

	

}
