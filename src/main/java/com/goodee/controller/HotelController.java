package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
}
