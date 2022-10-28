package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.goodee.vo.ProductboardVO;
import com.goodee.vo.ShopVO;
import com.goodee.vo.WishVO;

@Mapper
public interface ShopDAO {
	public List<ShopVO> getProductList();
	
	public List<ShopVO> getCateList(@Param("productCategory") String category);
	
	public ShopVO getListById(@Param("productId") String id);
	
	public List<ProductboardVO> getQna(@Param("productId") String id);
	
	public List<ProductboardVO> getReview(@Param("productId") String id);
	
	public int insertBoard(ProductboardVO vo);
	
	public void insertWish(WishVO vo);
	
	public List<WishVO> getWishList(int id);
	
	public void deletewish(int wishId);
}	
