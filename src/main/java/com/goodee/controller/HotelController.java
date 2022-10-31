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
import com.goodee.vo.HotelRoomVO;

@Controller
public class HotelController {
	
	private HotelService service;
	
	public HotelController(HotelService service) {
		super();
		this.service = service;
	}
	
	//hotelmain에서 hotellist로 넘어가는 컨트롤러
		//메인에서 지역구와 일자를 선택했을 때 선택한 지역구에 해당하는 호텔의 목록이 넘어옴
		
		@GetMapping("golist/{startDate}/{endDate}/{cate}")
		public String golist(@PathVariable("startDate") String startdate, @PathVariable("endDate") String enddate, @PathVariable("cate") String[] category,
							Model model) {
			System.out.println(startdate);
			System.out.println(enddate);
			/* System.out.println(category.length); */
			
			String stringcate = Arrays.toString(category);
			System.out.println(stringcate);
			
			model.addAttribute("startdate", startdate);
			model.addAttribute("enddate", enddate);
			model.addAttribute("category", stringcate);
			
			service.getHotelList(model, category);
			
			return "hotel/hotellist";
		}
		
		/*@GetMapping("roomlist/{room}")
		public String roomlist() {
			
		}*/
		
		/*@PostMapping("Restlist")
		@ResponseBody
		public HotelRoomVO restlist(@RequestBody HotelRoomVO vo) {
			service.nameRoomList(vo.getHotelName());
			return vo;
			
		}*/
		
		@GetMapping("godetail/{hotelName}/{roomName}/{startDate}/{endDate}")
		public String godetail(@PathVariable("hotelName") String hotelname, @PathVariable("roomName") String roomname, @PathVariable("startDate") String startdate, @PathVariable("endDate") String enddate, Model model) {
			System.out.println(hotelname);
			model.addAttribute("startdate", startdate);
			model.addAttribute("enddate", enddate);
			service.detailHotelList(model, hotelname, roomname);
			System.out.println("여까지 오니"+startdate+":"+enddate);
			System.out.println("컨트롤러"+hotelname);
			return "hotel/hoteldetail";
		}
		
		@GetMapping("goreserve")
		public String goreserve() {
			return "hotel/hotelreserve";
		}
		
		@GetMapping("maindetail/{random}")
		public String maindetail(@PathVariable("random") int ran, Model model) {
			
			System.out.println("넘어왔느뇨"+ran);
			service.ranHotelList(model, ran);
			return "hotel/hoteldetail";
		}
}
