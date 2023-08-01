package com.java.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NoticeBoardDto {
	
	private int nbno;
	private String nid;
	private String nbtitle;
	private String nbcontent;
	private Timestamp nbdate;
	private int nbhit;
	private int nbgroup;
	private int nbstep;
	private int nbindent;
	private String nbfile;
	private String nbcate;
	
}
