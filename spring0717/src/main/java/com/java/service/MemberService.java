package com.java.service;

import com.java.dto.MemberDto;

public interface MemberService {

	// login 확인 

	String selectOne(String id, String pw);

	MemberDto selectId(String id);

}
