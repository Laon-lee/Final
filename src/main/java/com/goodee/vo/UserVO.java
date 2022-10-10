package com.goodee.vo;

import org.apache.ibatis.type.Alias;

@Alias("userVO")
public class UserVO {
	// 로그인 관련 변경전 id여서 int id에 담기기 때문에 변경
	private int id;
	private String username;
	private String userid;
	private String password;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
