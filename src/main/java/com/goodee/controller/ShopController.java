package com.goodee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ShopController {
	@GetMapping("/shop/list")
	public String ShopList() {
		return "/shop/shop-list";
	}
	@GetMapping("/shop/main-buy1")
	public String ShopBuy() {
		return "shop/shop-main-buy";
	}
	@GetMapping("/shop/pay")
	public String ShopPay() {
		return "shop/shop-pay";	
	}
}