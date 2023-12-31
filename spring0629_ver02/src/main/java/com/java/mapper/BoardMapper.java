package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;

@Mapper
public interface BoardMapper {
	//게시글 전체 가져오기
	ArrayList<BoardDto> selectAll();
	//게시글 한개 가져오기 
	BoardDto selectOne(int bno);
	// 하단댓글 전체 가져오긴
	ArrayList<CommentDto> selectComAll(int bno);
	void commentInsert(CommentDto comDto);
	// 하단 댓글 한개 가져오기
	CommentDto selectComOne(CommentDto comDto);
	void commentDelete(int cno);
	//하단 댓글 수정 저장
	void commentUpdateSave(CommentDto comdto);

}
