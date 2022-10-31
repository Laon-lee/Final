package com.goodee.controller;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.ShopService;
import com.goodee.service.SuperviserService;
import com.goodee.vo.ShopVO;

@Controller
public class SuperviserController {

	private SuperviserService superservice;
	private ShopService spservice;
	
	public SuperviserController(SuperviserService superservice, ShopService spservice) {
		super();
		this.superservice = superservice;
		this.spservice = spservice;
	}

	
	@GetMapping("viser/main")
	public String viserMain(Model model) {
		spservice.getProductList(model);
		return"superviser/viser-main";
	}
	
	// 상품 추가 
	@GetMapping("viser/shop-add")
	public String addPage() {
		return"superviser/viser-shop-add";
	}
	
	@GetMapping("viser/add-success")
	public String success(ShopVO vo) {
		superservice.viseradd(vo);
		return "/superviser/viser-main";
	}
	
	// 상품 수정
	@GetMapping("viser/modify/{category}")
	public String modCategory(@PathVariable("category")String category,Model model) {
		spservice.getCateList(category, model);
		return "/superviser/viser-shop-modify";
	}
	
	@PostMapping("getList")
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
	
	//상품 삭제
	@GetMapping("/viser/shop-delete")
	public String viserDelete() {
		return "superviser/viser-main";
	}
	
	
	
	
}
