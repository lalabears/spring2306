package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.java.dto.EventBoardDto;
import com.java.dto.PageDto;

public interface EventBoardService {

	HashMap<String, Object> selectAllEventBoard(PageDto pageDto);

	HashMap<String, Object> selectOneEventBoard(int ebno, PageDto pageDto);

}
