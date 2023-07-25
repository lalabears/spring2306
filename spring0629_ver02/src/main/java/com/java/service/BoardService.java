package com.java.service;

import java.util.ArrayList;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;

public interface BoardService {
	//게시글 전체 가져오기
	ArrayList<BoardDto> selectAll();
	//게시글 한개 가져오기 
	BoardDto selectOne(int bno);
	// 하단댓글 전체 가져오긴
	ArrayList<CommentDto> selectComAll(int bno);
	CommentDto commentInsert(CommentDto comdto);
	//하단 댓글 한개 삭제 
	void commentDelete(int cno);
	//하단 댓글 수정 저장
	CommentDto commentUpdateSave(CommentDto comdto);

}
