package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.BoardDto;

@Mapper
public interface BoardMapper {

	ArrayList<BoardDto> selectAll(int startRow, int endRow, String category, String s_word);

	BoardDto selectOne(int bno);

	void insertOne(BoardDto bdto);

	void deleteOne(int bno);

	void updateOne(BoardDto bdto);

	void insertReplyOne(BoardDto bdto);

	void updateBstepCount(BoardDto bdto);

	int selectListCount(String category, String s_word); //게시글 전체개수

	BoardDto selectPrevOne(int bno);

	BoardDto selectNextOne(int bno);

	void updateBhitUp(int bno);

}
