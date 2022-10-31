package com.goodee.service;

import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.HotelDAO;
import com.goodee.vo.HotelVO;

@Service
public class HotelService {
	private HotelDAO dao;

	public HotelService(HotelDAO dao) {
		this.dao = dao;
	}

	//main에서 list로 페이지 이동할때 지역구 값 받아서 호텔 리스트 불러오는 서비스
		public void getHotelList(Model model, String[] cate) {
			System.out.println(cate);
			System.out.println("여기 서비스");
			model.addAttribute("hotel", dao.selectHotelList(cate));
			
			model.addAttribute("room", dao.selectRoomList());
			
			
		}
		
		public void detailHotelList(Model model, String hotelname, String roomname) {
			model.addAttribute("hotel", dao.detailHotel(hotelname).get(0));
			model.addAttribute("room", dao.detailRoom(hotelname, roomname).get(0));
		}
		
		public void ranHotelList(Model model, int ran) {
			model.addAttribute("hotel",dao.ranHotel(ran));
			
			String hotelname = dao.ranHotel(ran).getHotelName();
			
			model.addAttribute("room", dao.ranRoom(hotelname).get(0));
		};
		
}
