package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.CustomerDto;
import com.java.mapper.CustomerMapper;

@Service
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired	CustomerMapper customerMapper;

	@Override
	public ArrayList<CustomerDto> selectAll() {
		ArrayList<CustomerDto> list = customerMapper.selectAll();
		return list;
	}

}
