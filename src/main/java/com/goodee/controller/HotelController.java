package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.goodee.service.HotelService;

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
	
	@GetMapping("godetail")
	public String godetail() {
		return "hotel/hoteldetail";
	}
	
	@GetMapping("golist/{startDate}/{endDate}/{cate}")
	public String golist(@PathVariable("startDate") String startdate, @PathVariable("endDate") String enddate, @PathVariable("cate") String[] category,
						Model model) {
		System.out.println(startdate);
		System.out.println(enddate);
		System.out.println(category.length);
		
		service.getList(model);
		service.getRoomList(model);
		service.getCateList(model, category);
		
		
		return "hotel/hotellist";
	}
}
