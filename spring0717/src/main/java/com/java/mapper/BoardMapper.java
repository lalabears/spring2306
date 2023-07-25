package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;
import com.java.dto.PageDto;

@Mapper
public interface BoardMapper {
	//게시글 전체 가져오기
	// ArrayList<BoardDto> selectAll();
	
	//게시글 전체가져오기
	ArrayList<BoardDto> selectAll(PageDto pageDto);

	//전체게시글 수
	int selectListCount();

	void insertBoard(BoardDto boardDto);

	BoardDto selectOne(int bno);


}
