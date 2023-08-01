package com.java.dto;


import java.sql.Timestamp;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class TbdDto {
	
	private int nono;
	private int bno;
	private String btitle;
	private Timestamp bdate;
	private String bfile;
	private String bfile2;
	private String[] bfiles;
}