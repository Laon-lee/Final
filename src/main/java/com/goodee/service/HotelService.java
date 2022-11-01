package com.goodee.service;

import java.sql.Array;
import java.util.ArrayList;
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
		
		
		public void sampleHotelList(Model model, String[] cate, String startdate, String enddate) {
			System.out.println(cate);
			System.out.println("서비스탔나용");
			model.addAttribute("hotel", dao.selectHotelList(cate));
			
			int here = 0;
			int roomid[] = null;
			
			List<Integer> rid = new ArrayList<Integer>();
			
			for (int i = 0; i < dao.selectHotelList(cate).size(); i++) {
				int room = dao.selectRoomList().get(i).getRoomId(); 
				rid.add(room);
				
			
			}
			System.out.println("여기배열"+rid);
			int c = dao.dateCount(rid, startdate, enddate);
			if(c==0) {
				System.out.println("count == 0");
				model.addAttribute("room", dao.selectRoomList());
			} else {
				System.out.println("count != 0");
				model.addAttribute("room", dao.countRoom(rid, startdate, enddate));
			}
			
			/*
			 * System.out.println("here" + here); int hotelid =
			 * dao.selectHotelList(cate).get(0).getHotelId();
			 * System.out.println("hotelid"+hotelid); int roomid =
			 * dao.selectRoomList().get(0).getRoomId(); System.out.println("roomid"+roomid);
			 * int count = dao.dateCount(roomid, startdate, enddate);
			 * System.out.println("count"+count); if(count==0) {
			 * System.out.println("count == 0"); model.addAttribute("room",
			 * dao.selectRoomList()); } else { System.out.println("count != 0");
			 * model.addAttribute("room", dao.countRoom(roomid)); }
			 * System.out.println("서비스끝낫서용");
			 */
		}
		
}
