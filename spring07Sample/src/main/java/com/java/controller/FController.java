package com.java.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.dto.TbdDto;
import com.java.service.MemberService;
import com.java.service.TbdService;
import com.java.dto.MapDto;
import com.java.dto.MemberDto;

@Controller
public class FController {

	@Autowired
	MemberService memberService;
	@Autowired
	TbdService tbdService;

	@RequestMapping("/index")
	public String index(Model model) {
		
		
		
		

		String id = "aaa";
		MemberDto mdto = memberService.selectId(id);
		MemberDto mdto2 = memberService.selectId("bbb");
		MemberDto mdto3 = memberService.selectId("eee");
		
		String[] str = {"shopping","golf","read"};
		mdto.setHobbies(str);
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();
		list.add(mdto);
		list.add(mdto2);
		list.add(mdto3);
		
		
		
		
		
		model.addAttribute("list", list);
		
		
		
		
		
		return "index";
	}

	@RequestMapping("/selectform")
	public String selectform(TbdDto tDto) {

		System.out.println(tDto.getBtitle());

		return "index";
	}

	@RequestMapping("/test")
	public String test() {
		return "test";
	}

	@RequestMapping("/daumMap")
	public String daumMap(Model model) {

		// model.addAttribute("m",m);

		return "daumMap";
	}

	@PostMapping("/getPnt")
	@ResponseBody
	public ArrayList<MapDto> getPnt() {

		MapDto m1 = new MapDto();
		m1.setName("고려대학교의과대학부속구로병원");
		m1.setX(37.492052);
		m1.setY(126.8848701);
		MapDto m2 = new MapDto();
		m2.setName("구로성심병원");
		m2.setX(37.4996715);
		m2.setY(126.8664159);
		MapDto m3 = new MapDto();
		m3.setName("삼성미래여성병원");
		m3.setX(37.4912147);
		m3.setY(126.8404114);
		MapDto m4 = new MapDto();
		m4.setName("아름제일병원");
		m4.setX(37.5054584);
		m4.setY(126.8905378);
		MapDto m5 = new MapDto();
		m5.setName("예스병원");
		m5.setX(37.491706);
		m5.setY(126.8834154);

		ArrayList<MapDto> m = new ArrayList<>();
		m.add(m1);
		m.add(m2);
		m.add(m3);
		m.add(m4);
		m.add(m5);

		return m;

	}

	@RequestMapping("/doform1")
	public String doform1(TbdDto tDto, @RequestPart MultipartFile files, Model model) throws Exception {

		String fileName = "";
		if (!files.isEmpty()) {
			String ori_fileName = files.getOriginalFilename();
			UUID uuid = UUID.randomUUID();
			fileName = uuid + "_" + ori_fileName;
			String uploadUrl = "c:/upload/";
			File f = new File(uploadUrl + fileName);
			files.transferTo(f); // 파일저장
		}

		model.addAttribute("fileName", fileName);
		model.addAttribute("btitle", tDto.getBtitle());

		System.out.println(fileName);
		System.out.println(tDto.getBtitle());
		tDto.setBfile(fileName);

		String result = tbdService.insertVal(tDto);

		return "fileCheck";
	}

	@RequestMapping("/doform2")
	public String doform2(TbdDto tDto, List<MultipartFile> files, Model model) throws Exception {

		Timestamp newdate = Timestamp.valueOf("2023-07-20 11:49:40");

		System.out.println(tDto.getNono());
		String fNames = "";
		String fileName = "";
		int i = 0;
		for (MultipartFile file : files) {
			String ori_fileName = file.getOriginalFilename();

			UUID uuid = UUID.randomUUID();
			fileName = uuid + "_" + ori_fileName;
			String uploadUrl = "c:/upload/";
			File f = new File(uploadUrl + fileName);
			file.transferTo(f); // 파일저장

			if (i == 0)
				fNames += fileName;
			else
				fNames += "," + fileName;

			i++;
		}

		/* System.out.println(fileName); */

		String[] splitNames = fNames.split(",");

		System.out.println(splitNames[0]);
		System.out.println(splitNames[1]);
		tDto.setBfile(splitNames[0]);
		tDto.setBfile2(splitNames[1]);

		tDto.setBdate(newdate);
		// tDto.setBfile(fNames);
		// tDto.setBfiles(splitNames);

		model.addAttribute("bdto", tDto);

		/* System.out.println(fNames); */
		System.out.println(tDto.getBtitle());

		System.out.println(tDto.getBfile());
		System.out.println(tDto.getBfile2());

		String result = tbdService.insertVal(tDto);

		return "index";
	}

	

}