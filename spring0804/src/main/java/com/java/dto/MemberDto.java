package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor  // 전체생성자
@NoArgsConstructor // 기본생성자
@Data // getter setter
public class MemberDto {

	private String userid;
	private String upw;
	private String uname;
	private String uemail;
	private String uphone;
	private String uaddr;
	private String ugender;
	private String ujob;
	private String uinterest;
	private Timestamp ubirth;
	private Timestamp ujoind;
	private int ugetnews;
	private int ugetsms;
	private int usingle;
	
	private String emailId; 
	private String emailTail; 
	private String addr1; 
	private String addr2; 
	private String zipcode; 
	
	private String phone1; 
	private String phone2; 
	private String phone3; 

	private String byear; 
	private String bmonth; 
	private String bday; 
	
	
	
	
	
	
	    
	private String[] uinterests;
	private String join01;
	private String join02;
	
}