package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("orderdetailVO")
public class OrderdetailVO {
	private int orderdetailId;
	private int orderId;
	private int productId;
	private int orderstatusId;
	private int productPrice;
	private String productName;
	private int productTotal;
	private String productImage;
	public int getOrderdetailId() {
		return orderdetailId;
	}
	public void setOrderdetailId(int orderdetailId) {
		this.orderdetailId = orderdetailId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getOrderstatusId() {
		return orderstatusId;
	}
	public void setOrderstatusId(int orderstatusId) {
		this.orderstatusId = orderstatusId;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductTotal() {
		return productTotal;
	}
	public void setProductTotal(int productTotal) {
		this.productTotal = productTotal;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	
	
}
