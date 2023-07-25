package com.java.mapper;

import org.springframework.data.jpa.repository.JpaRepository;

import com.java.dto.Member;

public interface MemberMapper extends JpaRepository<Member, String> {

}
