package com.java.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.java.dto.CommentDto;
import com.java.dto.NoticeBoardDto;

@Mapper
public interface NoticeBoardMapper {

	void insertNoticeBoard(NoticeBoardDto nbdto);

	// 보드 리스트에 게시물 개수 세기 
	int selectListAllCount();

	ArrayList<NoticeBoardDto> selectAll(int startRow, int endRow);

	NoticeBoardDto selectPrevOne(int nbno);

	NoticeBoardDto selectNextOne(int nbno);

	NoticeBoardDto selectOne(int nbno);

	void updateBhitUp(int nbno);

	void deleteOne(int nbno);

	void insertUpdate(NoticeBoardDto nbdto);

	void insertComment(CommentDto cdto);

	CommentDto selectComment(int bno);

	void deleteComment(int bno);

	//void updateNbcate(NoticeBoardDto nbdto);

	void updateComment(CommentDto cdto);

}
