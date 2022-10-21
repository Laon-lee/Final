package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.ShopVO;

@Mapper
public interface ShopDAO {
	public List<ShopVO> getList(String category);
	public List<ShopVO> getContent(int id);
}
