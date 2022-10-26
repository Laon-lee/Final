package com.goodee.controller;

import java.util.Arrays;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.HotelService;
import com.goodee.vo.HotelDateVO;

@Controller
public class HotelController {
	
	private HotelService service;
	
	public HotelController(HotelService service) {
		super();
		this.service = service;
	}
	
	@GetMapping("hoteldetail")
	public String hoteldetail() {
		return "hotel/hoteldetail";
	}
	@GetMapping("hotellist")
	public String hotellist() {
		return "hotel/hotellist";
	}
	
	@GetMapping("godetail/{hotelName}")
	public String godetail(@PathVariable("hotelName") String hotelname, Model model) {
		System.out.println(hotelname);
		service.nameRoomList(model, hotelname);
		System.out.println("컨트롤러"+hotelname);
		return "hotel/hoteldetail";
	}
	
	@GetMapping("golist/{startDate}/{endDate}/{cate}")
	/* @GetMapping("golist/{startDate}/{endDate}") */
	
	public String golist(@PathVariable("startDate") String startdate, @PathVariable("endDate") String enddate, @PathVariable("cate") String[] category,
	/*public String golist(@PathVariable("startDate") String startdate, @PathVariable("endDate") String enddate,*/ 
						Model model) {
		System.out.println(startdate);
		System.out.println(enddate);
		/* System.out.println(category.length); */
		
		String stringcate = Arrays.toString(category);
		System.out.println(stringcate);
		model.addAttribute("startdate", startdate);
		model.addAttribute("enddate", enddate);
		model.addAttribute("category", stringcate);
		service.getList(model);
		service.getRoomList(model);
		service.getCateList(model, category);
		
		
		return "hotel/hotellist";
	}
	
//	@PostMapping("Restlist")
//	@ResponseBody
//	public HotelDateVO restlist(@RequestBody HotelDateVO vo) {
//		
//		
//		return vo;
//		
//	}
	
	@GetMapping("goreserve")
	public String goreserve() {
		return "hotel/hotelreserve";
	}
}
