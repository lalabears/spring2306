package com.java.service;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.BoardDto;
import com.java.dto.PageDto;
import com.java.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired BoardMapper boardMapper;
	

	
	//페이지정보 메소드
	public PageDto pageMethod(PageDto pageDto) {
		
		//전체게시글 수-142,현재페이지,최대페이지,시작페이지,끝페이지 1-시작,2,3,4,5-현재,6,7,8,9,10-끝  15-최대
		//시작번호,끝나는번호 1-10,11-20,21-30
		//전체게시글 수 저장
		pageDto.setListCount(boardMapper.selectListCount());
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
		
		return pageDto;
	}



	@Override //게시글 전체가져오기 - 현재페이지
	public HashMap<String, Object> selectAll(PageDto pageDto) {
		HashMap<String, Object> map = new HashMap<>();
		//페이지정보 메소드호출
		pageDto = pageMethod(pageDto);
		
		//게시글 전체가져오기
		ArrayList<BoardDto> list = boardMapper.selectAll(pageDto);
	//	System.out.println("BoardServiceImpl remainDate : "+list.get(0).getRemainDate());
		
		map.put("list", list);
		map.put("pageDto", pageDto);
		
		return map;
	}//



	@Override
	public void insertBoard(BoardDto boardDto, List<MultipartFile> files) {
		
		String bfile = "";
		String[] bfiles = new String[3];
		String tempFile = "";
		String oriFile = "";
		
		for(int i = 0 ; i < 3 ; i++) {
			if(!files.get(i).isEmpty()) {
				oriFile = files.get(i).getOriginalFilename(); 
				UUID uuid = UUID.randomUUID();
				tempFile = uuid+"_"+oriFile;
				String uploadURL = "c:/upload/";
				File f = new File(uploadURL+tempFile);
				try {
					files.get(i).transferTo(f);
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}// if
			
			if(i==0) {
				bfile = tempFile;
			}
			else {
				bfile += ","+tempFile;
			}
			
		}
		boardDto.setBfile(bfile);
		// System.out.println(bfile);
		boardMapper.insertBoard(boardDto);
		
	}



	@Override
	public BoardDto selectOne(int bno) {
		BoardDto bdto = boardMapper.selectOne(bno);
		System.out.println(bdto.getBcontent());
		return bdto;
	}
	
	
	
	

}