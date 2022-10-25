package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.goodee.service.MemberService;
import com.goodee.service.ShopService;
import com.goodee.vo.ShopVO;

@Controller
public class ShopController {
	private ShopService spservice;
	private MemberService mbservice;
	
	
	
	public ShopController(ShopService spservice, MemberService mbservice) {
		super();
		this.spservice = spservice;
		this.mbservice = mbservice;
	}
	@GetMapping("goshop")
	public String goshop(Model model) {
		spservice.getProductList(model);
		return "shop/shop-main-JJW";
	}
	@GetMapping("/shop/list/{category}")
	public String ShopList(@PathVariable("category") String category,Model model) {
		spservice.getCateList(category, model);
		return "/shop/shop-list";
	}
	//물품 상세 페이지 데이터 담을것
	@GetMapping("/shop/main/buy/{id}")
	public String ShopBuy(@PathVariable("id") String id,Model model) {
		spservice.getListById(id, model);
		return "shop/shop-main-buy";
	}
	@GetMapping("/shop/pay/{id}")
	public String ShopPay(@PathVariable("id") String id,Model model,
						@RequestParam("option") String option,
						@RequestParam("count") int count, HttpSession session) {
		spservice.getListByIdS(id, model,session);
		model.addAttribute("option", option);
		model.addAttribute("count", count);
		return "shop/shop-pay";	
	}
	@GetMapping("/shop/orderinfo")
	public String ShopOrderinfo() {
		return "shop/shop-orderinfo";
	}
}