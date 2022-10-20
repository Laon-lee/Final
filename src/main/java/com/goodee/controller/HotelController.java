package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HotelController {
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
	
	@GetMapping("golist/{startDate}/{endDate}")
	public String golist(@PathVariable("startDate") String startdate, @PathVariable("endDate") String enddate) {
		System.out.println(startdate);
		System.out.println(enddate);
		return "hotel/hotellist";
	}
}
