package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("orderVO")
public class OrderVO {
	private int orderId;
	private int productId;
	private String receiverName;
	private int receiverPhone;
	private String orderMsg;
	private String orderInfo;
	private String orderDate;
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
	public String getReceiverName() {
		return receiverName;
	}
	public void setReceiverName(String receiverName) {
		this.receiverName = receiverName;
	}
	public int getReceiverPhone() {
		return receiverPhone;
	}
	public void setReceiverPhone(int receiverPhone) {
		this.receiverPhone = receiverPhone;
	}
	public String getOrderMsg() {
		return orderMsg;
	}
	public void setOrderMsg(String orderMsg) {
		this.orderMsg = orderMsg;
	}
	public String getOrderInfo() {
		return orderInfo;
	}
	public void setOrderInfo(String orderInfo) {
		this.orderInfo = orderInfo;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	
}
