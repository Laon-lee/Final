package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.HotelRoomVO;
import com.goodee.vo.HotelVO;

@Mapper
public interface HotelDAO {
	public List<HotelVO> selectHotelList(@Param("list") String[] cate);
	public List<HotelRoomVO> selectRoomList();
	public List<HotelVO> detailHotel(@Param("hotelname") String hotelname);
	public List<HotelRoomVO> detailRoom(@Param("hotelname") String hotelname, @Param("roomname") String roomname);
	public HotelVO ranHotel(@Param("hotelid") int ran);
	public List<HotelRoomVO> ranRoom(@Param("hotelname") String hotelname);
}
