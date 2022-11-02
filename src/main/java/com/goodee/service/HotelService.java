package com.goodee.service;

import java.sql.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.HotelDAO;
import com.goodee.vo.HotelQnaVO;
import com.goodee.vo.HotelReviewVO;
import com.goodee.vo.HotelVO;

@Service
public class HotelService {
	private HotelDAO dao;

	public HotelService(HotelDAO dao) {
		this.dao = dao;
	}

	//main에서 list로 페이지 이동할때 지역구 값 받아서 호텔 리스트 불러오는 서비스
	public void getHotelList(Model model, String[] cate, String startdate, String enddate) {
		System.out.println(cate);
		System.out.println("여기 서비스");
		
		
		//지역구에 따른 호텔 리스트
		//dao.selectHotelList(cate);
		
		
		List<Integer> idlist = new ArrayList<Integer>();
		
		//출력된 호텔의 개수만큼 for문이 반복. 해당 데이터의 hotelid를 출력해서 배열에 저장
		for (int i = 0; i < dao.selectHotelList(cate).size(); i++) {
			System.out.println("id"+dao.selectHotelList(cate).get(i).getHotelId());
			idlist.add(dao.selectHotelList(cate).get(i).getHotelId());
		}
		
		System.out.println("idlist"+idlist);
		
		System.out.println("방"+dao.selectroom(idlist).get(0).getRoomName());
		System.out.println("방"+dao.selectroom(idlist).get(1).getRoomName());
		System.out.println("방개수"+dao.selectroom(idlist).size());
		
		
		model.addAttribute("hotel", dao.selectHotelList(cate));
		
		model.addAttribute("room", dao.selectroom(idlist));
	}
		
		public void detailHotelList(Model model, int hotelId) {
			model.addAttribute("hotel", dao.detailHotel(hotelId));
			
		}
		
		public void ranHotelList(Model model, int ran) {
			model.addAttribute("hotel",dao.ranHotel(ran));
			
			String hotelname = dao.ranHotel(ran).getHotelName();
			
			model.addAttribute("room", dao.ranRoom(hotelname).get(0));
		};
		
		
		
		public List<HotelReviewVO> getHotelReview(HotelReviewVO vo){
			return dao.getHotelReview(vo);
		}
		public List<HotelQnaVO> getHotelQna(HotelQnaVO vo){
			return dao.getHotelQna(vo);
		}
}
