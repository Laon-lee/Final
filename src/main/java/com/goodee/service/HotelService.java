package com.goodee.service;

import java.sql.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.lang.model.element.ModuleElement;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.HotelDAO;
import com.goodee.dao.MemberDAO;
import com.goodee.vo.HotelDetailResVO;
import com.goodee.vo.HotelQnaVO;
import com.goodee.vo.HotelResVO;
import com.goodee.vo.HotelReviewVO;
import com.goodee.vo.HotelRoomVO;
import com.goodee.vo.HotelVO;
import com.goodee.vo.MemberVO;

@Service
public class HotelService {
	private HotelDAO dao;
	private MemberDAO mbdao;

	public HotelService(HotelDAO dao, MemberDAO mbdao) {
		this.dao = dao;
		this.mbdao = mbdao;
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
		public void insertHotelQna(HotelQnaVO vo){
			dao.insertHotelQna(vo);
		}
		public void goreserve(int hotelId,Model model, HttpSession session) {
			MemberVO vo1 = (MemberVO)session.getAttribute("user");
			model.addAttribute("user",mbdao.getmemberinfo(vo1));
			model.addAttribute("separateVO",mbdao.separate(mbdao.getmemberinfo(vo1))); 
			model.addAttribute("hotel", dao.detailHotel(hotelId));
		}
		
		public HotelRoomVO getRoomInfo(HotelRoomVO vo) {
			return dao.getRoomInfo(vo);
		}

		public void resSuccess(HotelDetailResVO vo, HotelResVO vo1, HttpSession session) {
			MemberVO mbvo = (MemberVO)session.getAttribute("user");
			MemberVO mbvo2 = mbdao.getmemberinfo(mbvo);
			
			vo.setResStatus("예약 완료");
			dao.setDetailRes(vo);
			vo1.setResDetailNum(vo.getResDetailNum());
			vo1.setId(mbvo2.getId());
			dao.setRes(vo1);

		}
		public void getMyHotelRes(Model model,HttpSession session){
			MemberVO mbvo = (MemberVO)session.getAttribute("user");
			MemberVO mbvo2 = mbdao.getmemberinfo(mbvo);
			model.addAttribute("list",dao.getMyHotelres(mbvo2));
			model.addAttribute("history",dao.getMyHotelHistoryres(mbvo2));
			model.addAttribute("cancel",dao.getMyHotelCancelres(mbvo2));
		}

		public void resCancel(int resDetailNum) {
			dao.resDetailCancel(resDetailNum);
		}
		
}
