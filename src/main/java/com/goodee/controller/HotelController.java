package com.goodee.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.HotelService;
import com.goodee.vo.HotelDetailResVO;
import com.goodee.vo.HotelQnaVO;
import com.goodee.vo.HotelResVO;
import com.goodee.vo.HotelReviewVO;
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
		
		service.getHotelList(model, category, startdate, enddate);
		//service.sampleHotelList(model, category, startdate, enddate);
		
		//지역구 값에 따른 호텔 리스트를 출력
		//호텔 리스트의 호텔 id를 참고해서 roomlist를 뽑는데 room_type으로 묶음
		
		
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
		
	@GetMapping("godetail/{hotelId}/{startDate}/{endDate}")
	public String godetail(@PathVariable("hotelId") int hotelId, @PathVariable("startDate") String startdate, @PathVariable("endDate") String enddate, Model model) {
		
		model.addAttribute("startdate", startdate);
		model.addAttribute("enddate", enddate);
		service.detailHotelList(model, hotelId, startdate, enddate);
		
		return "hotel/hoteldetail";
	}
		
		@GetMapping("goreserve/{hotelId}/{startdate}/{enddate}")
		public String goreserve(@PathVariable("hotelId") int hotelId,
								@PathVariable("startdate") String startdate,
								@PathVariable("enddate") String enddate,
								Model model,HttpSession session) {
			model.addAttribute("startdate", startdate);
			model.addAttribute("enddate", enddate);
			service.goreserve(hotelId,model,session, startdate, enddate);
			return "hotel/hotelreserve";
		}
		
		@GetMapping("maindetail/{random}")
		public String maindetail(@PathVariable("random") int ran, Model model) {
			
			System.out.println("넘어왔느뇨"+ran);
			service.ranHotelList(model, ran);
			return "hotel/hoteldetail";
		}
		@PostMapping("gethotelreview")
		@ResponseBody
		public List<HotelReviewVO> getHotelReview(@RequestBody HotelReviewVO vo){
	        return service.getHotelReview(vo);
	    }
		
		@PostMapping("gethotelqna")
		@ResponseBody
		public List<HotelQnaVO> getHotelQna(@RequestBody HotelQnaVO vo){
	        return service.getHotelQna(vo);
	    }
		@PostMapping("inserthotelqna")
		@ResponseBody
		public void insertHotelQna(@RequestBody HotelQnaVO vo){
			service.insertHotelQna(vo);
	    }
		@PostMapping("getroominfo")
		@ResponseBody
		public HotelRoomVO getRoomInfo(@RequestBody HotelRoomVO vo){
			System.out.println(vo.getRoomId());
			return service.getRoomInfo(vo);
	    }
		
		@GetMapping("myhotelres/{startdate}/{enddate}")
		public String resSuccess(@PathVariable String startdate, 
								@PathVariable String enddate,
								HotelDetailResVO vo, HotelResVO vo1,
								HttpSession session) {
			vo.setResStart(startdate);
			vo.setResEnd(enddate);
			System.out.println(vo1.getResMsg());
			
			service.resSuccess(vo,vo1,session);
			
			return "redirect:/myhotelres";
		}
		
		@GetMapping("resCancel/{resDetailNum}")
		public String resCancel(@PathVariable int resDetailNum) {
			service.resCancel(resDetailNum);
			return "redirect:/myhotelres";
		}
}
