package com.java.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.BoardDto;
import com.java.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	

		
	@RequestMapping("/board/boardList")
	public String boardList(@RequestParam(defaultValue = "1")int page, String category, String s_word, Model model) {
		
		
		
		HashMap<String, Object> map = boardService.selectAll(page, category, s_word);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("listCount",map.get("listCount"));
		model.addAttribute("maxPage",map.get("maxPage"));
		model.addAttribute("startPage",map.get("startPage"));
		model.addAttribute("endPage",map.get("endPage"));
		model.addAttribute("startRow",map.get("startRow"));
		model.addAttribute("endRow",map.get("endRow"));
		model.addAttribute("page",map.get("page"));
		model.addAttribute("category",map.get("category"));
		model.addAttribute("s_word",map.get("s_word"));
		
		return "board/boardList";
	}
	
	@RequestMapping("/board/boardView")
	public String boardView(@RequestParam(defaultValue="1") int bno,
			int page, String category, String s_word, Model model) {
		// bno -> int로 자동형변환
	//	System.out.println(bno+1);
		
		HashMap<String, Object> map = boardService.selectOne(bno);
		
		//BoardDto bdto = boardService.selectOne(bno);
		model.addAttribute("bdto",map.get("bdto"));
		model.addAttribute("prevDto",map.get("prevDto"));
		model.addAttribute("nextDto",map.get("nextDto"));
		
		
		//model.addAttribute("bdto",bdto);
		model.addAttribute("page",page);
		model.addAttribute("category",category);
		model.addAttribute("s_word",s_word);
		return "board/boardView";
	}
	
	@GetMapping("/board/boardWrite")
	public String boardWrite(Model model) {
		
	
		
		return "board/boardWrite";
	}
	@PostMapping("/board/boardWrite")
	public String doBoardWrite(BoardDto bdto,@RequestPart MultipartFile file,
			Model model) throws Exception {
		// 게시글 1개저장
		String fileName="";
		
		//파일이 있을경우 파일저장
		if(!file.isEmpty()) {
			String ori_fileName = file.getOriginalFilename(); //실제파일이름
			UUID uuid = UUID.randomUUID(); //랜덤숫자생성
			fileName = uuid+"_"+ori_fileName;  //변경파일이름 - 중복방지
			String uploadUrl = "c:/upload/"; //파일업로드 위치
			File f = new File(uploadUrl+fileName);
			file.transferTo(f); //파일저장
		}
		System.out.println("doBoardWrite bfile : "+fileName);
		bdto.setBfile(fileName);
		boardService.insertOne(bdto);
		return "redirect:boardList";
	}//doBoardWrite
	
	
	@RequestMapping("/board/boardDelete")
	public String boardDelete(int bno) {
		//System.out.println("boardDelete bno: "+(bno+3));
		boardService.deleteOne(bno);
		return "redirect:boardList";
	}
	
	// 수정 저장 시 저장할때 
	@PostMapping("/board/boardUpdate")
	public String doboardUpdate(BoardDto bdto,@RequestPart MultipartFile file,
			int page, String category, String s_word,	Model model) throws Exception {
		
		//System.out.println("old file"+bdto.getBfile());
		//System.out.println("file"+file);
		
		String fileName="";
		
		//파일이 있을경우 파일저장
		if(!file.isEmpty()) {
			String ori_fileName = file.getOriginalFilename(); //실제파일이름
			UUID uuid = UUID.randomUUID(); //랜덤숫자생성
			fileName = uuid+"_"+ori_fileName;  //변경파일이름 - 중복방지
			String uploadUrl = "c:/upload/"; //파일업로드 위치
			File f = new File(uploadUrl+fileName);
			file.transferTo(f); //파일저장
			bdto.setBfile(fileName); 
		}

		boardService.updateOne(bdto);
		s_word = URLEncoder.encode(s_word,"utf-8");
		
		return "redirect:boardList?page="+page+"&category="+category+"&s_word="+s_word;
		
	}
	
	// 수정 누르면 나오는 페이지 
	@GetMapping("/board/boardUpdate")
	public String boardUpdate(int bno, int page, String category, String s_word,Model model) {
		//System.out.println("board update bno : "+bno);
		//BoardDto bdto = boardService.selectOne(bno);
			
		//model.addAttribute("bdto",bdto);
		
		HashMap<String, Object> map = boardService.selectOne(bno);
		
		//BoardDto bdto = boardService.selectOne(bno);
		model.addAttribute("bdto",map.get("bdto"));
		model.addAttribute("prevDto",map.get("prevDto"));
		model.addAttribute("nextDto",map.get("nextDto"));
		
		model.addAttribute("page",page);
		model.addAttribute("category",category);
		model.addAttribute("s_word",s_word);
		
		return "board/boardUpdate";
	}
	
	
	@GetMapping("/board/boardReply")
	public String boardReply(int bno, int page, String category, String s_word, Model model) {
		//System.out.println("board update bno : "+bno);
		//BoardDto bdto = boardService.selectOne(bno);
		//model.addAttribute("bdto",bdto);
		
		HashMap<String, Object> map = boardService.selectOne(bno);
		
		//BoardDto bdto = boardService.selectOne(bno);
		model.addAttribute("bdto",map.get("bdto"));
		model.addAttribute("prevDto",map.get("prevDto"));
		model.addAttribute("nextDto",map.get("nextDto"));
		
		
		model.addAttribute("page",page);
		model.addAttribute("category",category);
		model.addAttribute("s_word",s_word);
		
		return "board/boardReply";
	}
	
	@PostMapping("/board/boardReply")
	public String doboardReply(BoardDto bdto,@RequestPart MultipartFile file,
			int page, String category, String s_word,
			Model model) throws Exception {
		
		// 게시글 1개저장
		String fileName="";
		
		//파일이 있을경우 파일저장
		if(!file.isEmpty()) {
			String ori_fileName = file.getOriginalFilename(); //실제파일이름
			UUID uuid = UUID.randomUUID(); //랜덤숫자생성
			fileName = uuid+"_"+ori_fileName;  //변경파일이름 - 중복방지
			String uploadUrl = "c:/upload/"; //파일업로드 위치
			File f = new File(uploadUrl+fileName);
			file.transferTo(f); //파일저장
		}
		System.out.println("doboardReply bfile : "+fileName);
		bdto.setBfile(fileName);
		boardService.insertReplyOne(bdto);
		
		s_word = URLEncoder.encode(s_word,"utf-8");
		
		return "redirect:boardList?page="+page+"&category="+category+"&s_word="+s_word;

		
		
		// return "redirect:boardList";
		
		
	}
	

}
