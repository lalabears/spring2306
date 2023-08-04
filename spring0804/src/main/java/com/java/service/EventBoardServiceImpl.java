package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.EventBoardDto;
import com.java.dto.PageDto;
import com.java.mapper.EventBoardMapper;

@Service
public class EventBoardServiceImpl implements EventBoardService {

	@Autowired EventBoardMapper eventBoardMapper;
	
	
	@Override
	public HashMap<String, Object>  selectAllEventBoard(PageDto pageDto) {
		HashMap<String, Object> map = new HashMap<>();
		
		pageDto = pageMethod(pageDto);
		
		ArrayList<EventBoardDto> list = eventBoardMapper.selectAllEventBoard(pageDto);
		
		map.put("list", list);
		map.put("pageDto", pageDto);
		
		
		return map;
	}
	
	// 페이지 정보 
	public PageDto pageMethod(PageDto pageDto) {
		
		//전체게시글 수-142,현재페이지,최대페이지,시작페이지,끝페이지 1-시작,2,3,4,5-현재,6,7,8,9,10-끝  15-최대
		//시작번호,끝나는번호 1-10,11-20,21-30
		//전체게시글 수 저장
		pageDto.setListCount(eventBoardMapper.selectListCount());
		// 최대 넘버링페이지
		pageDto.setMaxPage((int)Math.ceil((double)pageDto.getListCount()/10));
		// 시작 넘버링페이지
		pageDto.setStartPage((int)((pageDto.getPage()-1)/10)*10 + 1);
		// 끝 넘버링페이지
		pageDto.setEndPage(pageDto.getStartPage()+10-1);
		// 시작번호
		pageDto.setStartRow((pageDto.getPage()-1)*10+1);
		// 끝나는번호
		pageDto.setEndRow(pageDto.getStartRow()+10-1);
		
		System.out.println(pageDto.getListCount());
		System.out.println(pageDto.getEndPage());
		System.out.println(pageDto.getMaxPage());
		
		return pageDto;
	}

	@Override
	public HashMap<String, Object> selectOneEventBoard(int ebno, PageDto pageDto) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		EventBoardDto ebdto = eventBoardMapper.selectOneEventBoard(ebno);
		EventBoardDto prev = eventBoardMapper.selectPrevEventBoard(ebno);
		EventBoardDto next = eventBoardMapper.selectNextEventBoard(ebno);
		
		map.put("ebdto", ebdto);
		map.put("prev", prev);
		map.put("next", next);
		return map;
	}



}
