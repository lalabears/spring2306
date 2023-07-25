package com.java.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.dto.BoardDto;
import com.java.dto.CommentDto;
import com.java.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public ArrayList<BoardDto> selectAll() {
		
		ArrayList<BoardDto> list = new ArrayList<>();
		//게시글 전체 가져오기
		list = boardMapper.selectAll();
		return list;
	}

	@Override
	public BoardDto selectOne(int bno) {
		//게시글 한개 가져오기 
		BoardDto bdto = boardMapper.selectOne(bno);
		return bdto;
	}

	@Override
	public ArrayList<CommentDto> selectComAll(int bno) {
		// 하단댓글 전체 가져오긴
		ArrayList<CommentDto> comlist = boardMapper.selectComAll(bno);
		
		return comlist;
	}

	@Override
	public CommentDto commentInsert(CommentDto comDto) {
		//하단댓글저장 후
		boardMapper.commentInsert(comDto);
		System.out.println("BoardServiceImpl comDto cno :"+ comDto.getCno());
		System.out.println("BoardServiceImpl comDto cdate :"+ comDto.getCdate());
		//하단댓글 1개가져오기
		CommentDto cdto = boardMapper.selectComOne(comDto);
		//return  null;
		return  cdto;
	}

	@Override
	public void commentDelete(int cno) {
		// 하단댓글 한개 삭제 
		 boardMapper.commentDelete(cno);
	}

	@Override
	public CommentDto commentUpdateSave(CommentDto comdto) {
		//하단 댓글 수정 저장
		boardMapper.commentUpdateSave(comdto);
		CommentDto cdto = boardMapper.selectComOne(comdto);
		return cdto;
	}

}
