package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EventBoardDto {
	
	private int ebno;
	private String eid;
	private String ebtitle;
	private String ebcontent;
	private Timestamp ebdate;
	private int ebhit;
	private int ebgroup;
	private int ebstep;
	private int ebindent;
	private String ebfile;
	private String ebcate;
	
}
