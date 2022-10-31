package com.goodee.dao;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.ShopVO;

@Mapper
public interface SuperviserDAO {
	
	
	public int addproc(ShopVO vo);
	
}
