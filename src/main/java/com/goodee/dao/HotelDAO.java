package com.goodee.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.HotelDetailResVO;
import com.goodee.vo.HotelJoinVO;
import com.goodee.vo.HotelQnaVO;

import com.goodee.vo.HotelResVO;
import com.goodee.vo.HotelReviewVO;
import com.goodee.vo.HotelRoomVO;
import com.goodee.vo.HotelVO;
import com.goodee.vo.MemberVO;
import com.goodee.vo.ProductboardVO;

@Mapper
public interface HotelDAO {
	public List<HotelVO> selectRanHotel(@Param("ran")Set<Integer> set);
	
	public List<HotelVO> selectHotelList(@Param("list") String[] cate);
	public List<HotelRoomVO> selectroom(@Param("hotelid") List<Integer> idlist);
	
	public List<HotelRoomVO> selectRoomList();
	public int[] detailRoomId(@Param("startdate")String Startdate, @Param("enddate") String enddate);
	public List<HotelJoinVO> detailHotelRoom(@Param("hotelId") int hotelId, @Param("roomId")int[] roomId);
	
	public HotelVO ranHotel(@Param("hotelid") int ran);
	public List<HotelRoomVO> ranRoom(@Param("hotelname") String hotelname);
	
	//public int dateCount(@Param("roomid")int[] roomid, @Param("startdate")String startdate, @Param("enddate") String enddate);
	
	public List<HotelRoomVO> countRoom(@Param("roomid") List<Integer> roomid, @Param("startdate")String startdate, @Param("enddate") String enddate);
	public int dateCount(@Param("roomid") List<Integer> roomid, @Param("startdate")String startdate, @Param("enddate") String enddate);
	
	public List<HotelReviewVO> getHotelReview(HotelReviewVO vo);
	public int getHotelReviewCount(HotelReviewVO vo);
	public List<HotelReviewVO> getMoreHotelReview(@Param("hotelId") String id, @Param("page") int page);
	
	public List<HotelQnaVO> getHotelQna(HotelQnaVO vo);
	public int getHotelQnaCount(HotelQnaVO vo);
	public List<HotelQnaVO> getMoreHotelQna(@Param("hotelId") String id, @Param("page") int page);
	
	public void insertHotelQna(HotelQnaVO vo);
	public HotelRoomVO getRoomInfo(HotelRoomVO vo);
	public void setDetailRes(HotelDetailResVO vo);
	public void setRes(HotelResVO vo1);
	public List<HotelJoinVO> getMyHotelres(MemberVO mbvo2);
	public List<HotelJoinVO> getMyHotelCancelres(MemberVO mbvo2);
	public List<HotelJoinVO> getMyHotelHistoryres(MemberVO mbvo2);
	public void resDetailCancel(@Param("resDetailNum") int resDetailNum);
	

}
