package com.java.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.CommentDto;
import com.java.dto.NoticeBoardDto;
import com.java.service.NoticeBoardService;

@Controller
public class NoticeBoardController {
	
	@Autowired HttpSession session;
	@Autowired NoticeBoardService noticeBoardService;
	
	
	
	
	@PostMapping("/board/admincommentinsert")
	@ResponseBody
	public String admincommentinsert(String id, int nbno, String ccontent, NoticeBoardDto nbdto) {
		
		System.out.println(id);
		System.out.println(nbno);
		System.out.println(ccontent);
		
	
		CommentDto cdto = new CommentDto();
		
		cdto.setBno(nbno);
		cdto.setCcontent(ccontent);
		cdto.setId(id);
		
		System.out.println("nbno"+nbdto.getNbno() );
		nbdto.setNbcate("notice");
				
		noticeBoardService.insertComment(cdto);
	//	noticeBoardService.updateNbcate(nbdto);
		return "success";
	}
	
	@PostMapping("/board/admincommentdelete")
	@ResponseBody
	public String admincommentdelete(NoticeBoardDto nbdto) {
		
		System.out.println(nbdto.getNbno());
		noticeBoardService.deleteComment(nbdto.getNbno());
		
		
		return "success";
	}
	
	@PostMapping("/board/admincommentupdate")
	@ResponseBody
	public String admincommentupdate(NoticeBoardDto nbdto, String ccontent) {
		
		System.out.println("댓글 수정버튼 클릭 : "+nbdto.getNbno());
		System.out.println(ccontent);
		
		CommentDto cdto =noticeBoardService.selectComment(nbdto.getNbno());
		
		System.out.println(cdto.getCcontent());
		
		cdto.setCcontent(ccontent);
		noticeBoardService.updateComment(cdto);
		
		return "success";
	}
	
	
	
	
	
	
	
	@RequestMapping("/board/noticeList")
	public String noticeList(@RequestParam(defaultValue = "1")int page, Model model) {
		
		HashMap<String,Object> map = noticeBoardService.selectAllNoticeBoard(page);
		model.addAttribute("list",map.get("list"));
		model.addAttribute("page",map.get("page"));
		model.addAttribute("listCount",map.get("listCount"));
		model.addAttribute("startPage",map.get("startPage"));
		model.addAttribute("endPage",map.get("endPage"));
		model.addAttribute("maxPage",map.get("maxPage"));

		
		return "board/noticeList";
	}
	
	@RequestMapping("/board/noticeRead")
	public String noticeRead(@RequestParam(defaultValue = "1")int page,@RequestParam(defaultValue = "2")int nbno, Model model) {
		
		HashMap<String, Object> map = noticeBoardService.selectOne(nbno);
		
		model.addAttribute("nbdto",map.get("nbdto"));
		model.addAttribute("prevDto",map.get("prevDto"));
		model.addAttribute("nextDto",map.get("nextDto"));
		model.addAttribute("page",page);
		
		int bno = nbno; 
		
		CommentDto cdto = noticeBoardService.selectComment(bno);
		model.addAttribute("cdto",cdto);
		
		
		return "board/noticeRead";
	}
	
	@GetMapping("/board/write")
	public String noticeWrite() {
		return "board/write";
	}
	
	@PostMapping("/board/write")
	public String noticeWrite(NoticeBoardDto nbdto, @RequestPart MultipartFile file) throws Exception {
			
		// 작성 후 정보가 dto에 담아서 들어 올 예정임
		
		
		String id = "";
		if(session.getAttribute("sessionId")==null) {
			return "member/login";
		}
		
		id = (String)session.getAttribute("sessionId");
		
		
		
		System.out.println(nbdto.getNbcontent());
		System.out.println(nbdto.getNbtitle());
		
		String fileName = "";
		if (!file.isEmpty()) {
			String ori_fileName = file.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			fileName = uuid + "_" + ori_fileName;
			String uploadUrl = "c:/upload/";
			File f = new File(uploadUrl + fileName);
			file.transferTo(f); // 파일저장
		}
		
		System.out.println(fileName);

		nbdto.setNid(id);
		nbdto.setNbfile(fileName);
		
		noticeBoardService.insertNoticeBoard(nbdto);
		
		
		return "redirect:noticeList";
	}
	
	
	@RequestMapping("/board/noticeDelete")
	public String boardDelete(int nbno) {
		System.out.println("boardDelete : "+nbno);
		
		noticeBoardService.deleteOne(nbno);
		return "redirect:noticeList";
	}
	
	@GetMapping("/board/update")
	public String noticeUpdate(int nbno, Model model) {
		
		NoticeBoardDto nbdto = noticeBoardService.selectUpdate(nbno);
		model.addAttribute("nbdto",nbdto);
		
		return "board/update";
	}
	@PostMapping("/board/update")
	public String noticeUpdate(NoticeBoardDto nbdto, @RequestPart MultipartFile file) throws Exception {
		
		// 작성 후 정보가 dto에 담아서 들어 올 예정임
		
		System.out.println("ddddd");
		System.out.println(nbdto.getNbno());
		
		String id = "";
		if(session.getAttribute("sessionId")==null) {
			return "member/login";
		}
		
		id = (String)session.getAttribute("sessionId");
		
		
		
		System.out.println(nbdto.getNbcontent());
		System.out.println(nbdto.getNbtitle());
		
		String fileName = "";
		if (!file.isEmpty()) {
			String ori_fileName = file.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			fileName = uuid + "_" + ori_fileName;
			String uploadUrl = "c:/upload/";
			File f = new File(uploadUrl + fileName);
			file.transferTo(f); // 파일저장
		}
		
		System.out.println(fileName);
	
		nbdto.setNid(id);
		nbdto.setNbfile(fileName);
		
		noticeBoardService.insertUpdate(nbdto);
		
	
	return "redirect:noticeList";
		
		
	}

}
