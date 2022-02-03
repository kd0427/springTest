package com.board.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.test.service.NoticeService;
import com.board.test.vo.NoticeVO;

@Controller
@RequestMapping("/client/notice/")
public class NoticeController {
	
	@Autowired
	private NoticeService service;
	
	@RequestMapping("list")
	public String list(Model model) {
		
		List<NoticeVO> list = service.getlist();
		
		model.addAttribute("list", list);
		
		return "/client/notice/list";
	}
}
