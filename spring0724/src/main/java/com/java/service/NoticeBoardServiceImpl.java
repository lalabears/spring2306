package com.java.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.CommentDto;
import com.java.dto.NoticeBoardDto;
import com.java.mapper.NoticeBoardMapper;

@Service
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired NoticeBoardMapper noticeBoardMapper;
	
	@Override
	public void insertNoticeBoard(NoticeBoardDto nbdto) {
		
		noticeBoardMapper.insertNoticeBoard(nbdto);
		
	}

	@Override
	public HashMap<String, Object> selectAllNoticeBoard(int page) {
		
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = noticeBoardMapper.selectListAllCount();
		
		int maxPage = (int)Math.ceil((double)listCount/10); // 26/10 3개page
		int startPage = (int)((page-1)/10)*10 + 1;  //1
		int endPage = startPage+10-1;
		int startRow = (page-1)*10+1;  //1page -> 1-10, 2page -> 11-20
		int endRow = startRow+10-1;
		
		if(endPage>maxPage) endPage=maxPage;
		
		System.out.println("endPage : "+endPage);
		ArrayList<NoticeBoardDto> list = noticeBoardMapper.selectAll(startRow,endRow);

		
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("page", page);
		map.put("list", list);
		
		return map;
	}

	@Override
	public HashMap<String, Object> selectOne(int nbno) {
		HashMap<String, Object> map = new HashMap<>();
		// 조회수 1증가
		noticeBoardMapper.updateBhitUp(nbno);
		
		// 게시글 1개, 이전글, 다음글 1개 가져오기
		NoticeBoardDto prevDto = noticeBoardMapper.selectPrevOne(nbno);
		NoticeBoardDto nextDto = noticeBoardMapper.selectNextOne(nbno);
		NoticeBoardDto nbdto = noticeBoardMapper.selectOne(nbno);
		map.put("prevDto", prevDto);
		map.put("nextDto", nextDto);
		map.put("nbdto", nbdto);
		
		return map;
	}

	@Override
	public void deleteOne(int nbno) {
		noticeBoardMapper.deleteOne(nbno);
		
	}

	@Override
	public NoticeBoardDto selectUpdate(int nbno) {
		NoticeBoardDto nbdto = noticeBoardMapper.selectOne(nbno);
		return nbdto;
	}

	@Override
	public void insertUpdate(NoticeBoardDto nbdto) {
		
		System.out.println("insertupdate called");
		noticeBoardMapper.insertUpdate(nbdto);
		
	}

	@Override
	public void insertComment(CommentDto cdto) {
		noticeBoardMapper.insertComment(cdto);
		
	}

	@Override
	public CommentDto selectComment(int bno) {
		System.out.println(bno);
		CommentDto cdto = noticeBoardMapper.selectComment(bno);
		return cdto;
	}

	@Override
	public void deleteComment(int bno) {
		noticeBoardMapper.deleteComment(bno);
	}

	/*
	 * @Override public void updateNbcate(NoticeBoardDto nbdto) {
	 * noticeBoardMapper.updateNbcate(nbdto);
	 * 
	 * }
	 */

	@Override
	public void updateComment(CommentDto cdto) {
		noticeBoardMapper.updateComment(cdto);
		
	}

}
