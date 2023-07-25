package com.java.dto;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;
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
public class Board {
	
	@Id
	private int bno;
	@Column(nullable = false,length=100)
	private String id;
	@Column(nullable = false,length = 100)
	private String btitle;
	@Lob
	private String bcontent;
	@CreationTimestamp //시간이 자동으로 입력
	private Timestamp bdate;
	@ColumnDefault("0")
	private int bhit;
	private int bgroup;
	private int bstep;
	private int bindent;
	private String bfile;

}
