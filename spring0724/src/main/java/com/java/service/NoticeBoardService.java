package com.java.service;

import java.util.HashMap;

import com.java.dto.CommentDto;
import com.java.dto.NoticeBoardDto;

public interface NoticeBoardService {

	void insertNoticeBoard(NoticeBoardDto nbdto);

	// 페이지가 있는 보드 리스트 전체 불러오기
	HashMap<String, Object> selectAllNoticeBoard(int page);

	// 노티스 게시글 한개 가져오기 
	HashMap<String, Object> selectOne(int nbno);

	void deleteOne(int nbno);

	NoticeBoardDto selectUpdate(int nbno);

	void insertUpdate(NoticeBoardDto nbdto);

	void insertComment(CommentDto cdto);

	CommentDto selectComment(int bno);

	void deleteComment(int bno);

	void updateComment(CommentDto cdto);

	//void updateNbcate(NoticeBoardDto nbdto);


}
