package com.java.service;

import com.java.dto.MemberDto;

public interface MemberService {

	// login 확인 
	MemberDto selectLogin(MemberDto memberDto);

}
