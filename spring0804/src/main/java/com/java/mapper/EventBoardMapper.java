package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.CommentDto;
import com.java.dto.EventBoardDto;
import com.java.dto.NoticeBoardDto;
import com.java.dto.PageDto;

@Mapper
public interface EventBoardMapper {

	ArrayList<EventBoardDto> selectAllEventBoard(PageDto pageDto);

	int selectListCount();

	EventBoardDto selectOneEventBoard(int ebno);

	EventBoardDto selectPrevEventBoard(int ebno);

	EventBoardDto selectNextEventBoard(int ebno);

	

}
