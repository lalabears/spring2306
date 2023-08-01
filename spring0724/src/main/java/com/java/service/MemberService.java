package com.java.service;

import com.java.dto.MemberDto;

public interface MemberService {

	String selectLogin(String userid, String upw);

	MemberDto selectId(String userid);

	// 회원가입
	String insertMember(MemberDto mdto);

}
