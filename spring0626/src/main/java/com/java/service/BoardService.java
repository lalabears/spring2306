package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.java.dto.BoardDto;

public interface BoardService {

	HashMap<String, Object> selectAll(int page, String category, String s_word);

	HashMap<String, Object> selectOne(int bno);

	void insertOne(BoardDto bdto);

	void deleteOne(int bno);

	void updateOne(BoardDto bdto);

	void insertReplyOne(BoardDto bdto);

}
