package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("hoteljoinVO")
public class HotelJoinVO {
   private int hotelId;
   private String hotelName;
   private String hotelAddr;
   private String hotelCategory;
   private String hotelTel;
   private String hotelOpt;
   private String hotelDeopt;
   private String hotelThum;
   private String hotelImg;
   private String hotelContent;
   private int roomId;
   private String roomName;
   private String roomType;
   private String roomPrice;
   private String roomContent;
   public int getHotelId() {
      return hotelId;
   }
   public void setHotelId(int hotelId) {
      this.hotelId = hotelId;
   }
   public String getHotelName() {
      return hotelName;
   }
   public void setHotelName(String hotelName) {
      this.hotelName = hotelName;
   }
   public String getHotelAddr() {
      return hotelAddr;
   }
   public void setHotelAddr(String hotelAddr) {
      this.hotelAddr = hotelAddr;
   }
   public String getHotelCategory() {
      return hotelCategory;
   }
   public void setHotelCategory(String hotelCategory) {
      this.hotelCategory = hotelCategory;
   }
   public String getHotelTel() {
      return hotelTel;
   }
   public void setHotelTel(String hotelTel) {
      this.hotelTel = hotelTel;
   }
   public String getHotelOpt() {
      return hotelOpt;
   }
   public void setHotelOpt(String hotelOpt) {
      this.hotelOpt = hotelOpt;
   }
   public String getHotelDeopt() {
      return hotelDeopt;
   }
   public void setHotelDeopt(String hotelDeopt) {
      this.hotelDeopt = hotelDeopt;
   }
   public String getHotelThum() {
      return hotelThum;
   }
   public void setHotelThum(String hotelThum) {
      this.hotelThum = hotelThum;
   }
   public String getHotelImg() {
      return hotelImg;
   }
   public void setHotelImg(String hotelImg) {
      this.hotelImg = hotelImg;
   }
   public String getHotelContent() {
      return hotelContent;
   }
   public void setHotelContent(String hotelContent) {
      this.hotelContent = hotelContent;
   }
   public int getRoomId() {
      return roomId;
   }
   public void setRoomId(int roomId) {
      this.roomId = roomId;
   }
   public String getRoomName() {
      return roomName;
   }
   public void setRoomName(String roomName) {
      this.roomName = roomName;
   }
   public String getRoomType() {
      return roomType;
   }
   public void setRoomType(String roomType) {
      this.roomType = roomType;
   }
   public String getRoomPrice() {
      return roomPrice;
   }
   public void setRoomPrice(String roomPrice) {
      this.roomPrice = roomPrice;
   }
   public String getRoomContent() {
      return roomContent;
   }
   public void setRoomContent(String roomContent) {
      this.roomContent = roomContent;
   }
   
   
   
}