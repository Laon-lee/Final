package com.goodee.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.MemberService;
import com.goodee.service.ShopService;
import com.goodee.vo.OrderVO;
import com.goodee.vo.OrderdetailVO;
import com.goodee.vo.ProductboardVO;
import com.goodee.vo.WishVO;


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
	
	
	@PostMapping("insertreview")
	@ResponseBody
	public ProductboardVO insertreview(@RequestBody ProductboardVO vo) {
		spservice.insertReview(vo);
		return vo;
	}
	@PostMapping("insertqna")
	@ResponseBody
	public ProductboardVO insertqna(@RequestBody ProductboardVO vo) {
		spservice.insertQna(vo);
		return vo;
	}
	@PostMapping("insertWish")
	@ResponseBody
	public WishVO insertWish(@RequestBody WishVO vo) {
		spservice.insertWish(vo);
		return vo;
	}
	
	@GetMapping("deletewish/{wishId}")
	public String deletewish(@PathVariable int wishId) {
		spservice.deletewish(wishId);
		return "redirect:/wish";
	}
	@GetMapping("ordersuccess")
	public String ordersuccess(@ModelAttribute OrderVO vo, @ModelAttribute OrderdetailVO vo1,
							HttpSession session,@RequestParam int point) {
		spservice.insertorder(vo,vo1,session,point);
		return "redirect:/mypage";
	}
	
	
	@PostMapping("getPdList")
	@ResponseBody
	public Map<String,Object> getPdList(@RequestBody String inParam) {
		JSONParser parser = new JSONParser();
		Map<String,Object> map=new HashMap<String,Object>();
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(inParam);
			map=spservice.getPdList(jsonObject);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return map;
	}
	
	@GetMapping("orders")
	public String orders(@RequestParam String[] checks,Model model,HttpSession session) {
		spservice.orders(checks, model ,session);
		return "shop/shop-allpay";	
	}
	
	@GetMapping("deleteWishAll")
	public String deleteWishAll(@RequestParam String[] checks,Model model) {
		spservice.deleteWishAll(checks, model);
		
		return "redirect:/wish";
	}
	@GetMapping("orderssuccess")
	public String orderssuccess(@RequestParam int[] productIds, @RequestParam int[] productCounts,
								@ModelAttribute OrderVO vo,	HttpSession session,@RequestParam int point) {
		spservice.insertorders(productIds,productCounts, vo,session,point);
		return "redirect:/mypage";
	}
}