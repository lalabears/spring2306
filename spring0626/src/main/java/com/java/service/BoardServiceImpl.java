package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.BoardDto;
import com.java.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public HashMap<String, Object> selectAll(int page,  String category, String s_word) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		//게시글 전체개수
		int listCount = boardMapper.selectListCount(category,s_word);
		// 최대페이지
		int maxPage = (int)Math.ceil((double)listCount/10.0); 
		// 
		int startPage = (int)((page-1)/10)*10+1;
		int endPage = startPage+10-1;
		
		int startRow = (page-1)*10 +1;
		int endRow = startRow+10-1;
		
//		System.out.println(page+", " +listCount+","+maxPage+","+startPage+","+endPage+","+startRow+","+endRow);
		
//		System.out.println(category+","+s_word);
		
		if(endPage>maxPage) endPage =maxPage;

		ArrayList<BoardDto> list = boardMapper.selectAll(startRow, endRow, category, s_word );
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("page", page);
		map.put("list", list);
		map.put("category", category);
		map.put("s_word", s_word);
		
		
		return map;
	}

	@Override
	public HashMap<String, Object> selectOne(int bno) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		boardMapper.updateBhitUp(bno);
		
		
		 
		BoardDto prevDto = boardMapper.selectPrevOne(bno);
		BoardDto bdto = boardMapper.selectOne(bno);
		BoardDto nextDto = boardMapper.selectNextOne(bno);
		
		map.put("prevDto", prevDto);
		map.put("bdto", bdto);
		map.put("nextDto", nextDto);
		
		return map;
	}

	@Override
	public void insertOne(BoardDto bdto) {
		boardMapper.insertOne(bdto);
		
	}

	@Override
	public void deleteOne(int bno) {
		boardMapper.deleteOne(bno);
		
	}

	@Override
	public void updateOne(BoardDto bdto) {
		boardMapper.updateOne(bdto);
	}

	@Override
	public void insertReplyOne(BoardDto bdto) {
		boardMapper.updateBstepCount(bdto);
		boardMapper.insertReplyOne(bdto);
		
	}

}
