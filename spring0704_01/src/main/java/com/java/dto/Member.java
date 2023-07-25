package com.java.dto;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.DynamicInsert;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@AllArgsConstructor  // 전체생성자
@NoArgsConstructor // 기본생성자
@Data // getter setter
@DynamicInsert
@Entity
public class Member {

	@Id
	private String id;
	@Column(nullable = false,length=100)
	private String pw;
	@Column(nullable = false,length=30)
	private String name;
	@Column(length=20)
	private String phone;
	@ColumnDefault(" ‘남자’ ")
	private String gender;
	@Column(length=100)
	private String hobby;
	
	
}