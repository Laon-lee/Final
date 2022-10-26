package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.HotelVO;

@Mapper
public interface HotelDAO {
	public List<HotelVO> selectList();
	public List<HotelVO> selectRoomList();
	
	public List<HotelVO> selectHotelNameList();
	
	public List<HotelVO> selectCateList(@Param("list") String[] cate);
	
	public List<HotelVO> selectroomnameList(@Param ("hotelname") String hotelname);
}
