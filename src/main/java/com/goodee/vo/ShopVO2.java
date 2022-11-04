package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("shopVO2")
public class ShopVO2 {

	private int productId;
	private String productName;
	private String productShop;
	private String productContent;
	private String productCategory;
	private int productTotal;
	private int productPrice;
	private String productOpt;
	private String productImage;
}
