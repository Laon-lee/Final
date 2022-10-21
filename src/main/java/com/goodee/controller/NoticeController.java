package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.goodee.service.NoticeService;


@Controller
public class NoticeController {
	private NoticeService nservice;
	
	
	public NoticeController(NoticeService nservice) {
		super();
		this.nservice = nservice;
	}
	
	@GetMapping("notice")
	public String notice(Model model) {
		nservice.getList(model);
		
		return "notice/notice";
	}
	
	@GetMapping("noticedetail/{id}")
	public String noticedetail(@PathVariable("id")String id,Model model) {
		
		nservice.getContents(id, model);
		
		return "notice/notice_detail";
	}
}
