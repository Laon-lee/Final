package com.goodee.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.NuriService;
import com.goodee.service.ShopService;
import com.goodee.vo.OrderVO;
import com.goodee.vo.OrderdetailVO;
import com.goodee.service.BoardService;

@Controller
public class MainController {
	private BoardService service;
	private ShopService spservice;
	private NuriService nrservice;
	
	public MainController(BoardService service,ShopService spservice,NuriService nrservice) {
		super();
		this.service = service;
		this.spservice = spservice;
		this.nrservice = nrservice;
	}
	
	@GetMapping("membership")
	public String membership(){
		return "main/mailCheck";
	}
	@GetMapping("gomembership")
	public String gomembership(@RequestParam String email, Model model){
		model.addAttribute("email", email);
		return "main/membership";
	}
	// 마이페이지
	@GetMapping("mypage")
	public String mypage(HttpSession session, Model model) {
		spservice.getMyOrder(session, model);
		return "main/mypage";
	}
	
	// 자주묻는질문
	@GetMapping("usequestion/{boardCategory}")
	public String usequestion(Model model,@PathVariable("boardCategory") String boardCategory) {
		service.getList(model,boardCategory);
		return "main/usequestion";
	}
	// 문의하기
	@GetMapping("question")
	public String question() {
		return "main/question";
	}
	@GetMapping("basket")
	public String basket() {
		return "shop/shop-basket";
	}
	@GetMapping("gomain")
	public String gomain() {
		return "main/main";
	}
	
	@GetMapping("gomain2")
	public String gomain2() {
		return "main/main";
	}
	
	// 호텔
	@GetMapping("gohotel")
	public String gohotel() {
		return "hotel/hotelmain";
	}
	// 장바구니
	@GetMapping("wish")
	public String gowish(Model model, HttpSession session) {
		spservice.getWishList(model, session);
		return "main/wish";
	}
	// 쿠폰
	@GetMapping("coupon")
	   public String counpon() {
		   return "main/coupon";
	   }
	// 공지사항
	@GetMapping("notice/{boardCategory}")
	public String notice(Model model,@PathVariable("boardCategory") String boardCategory) {
		service.getList(model,boardCategory);
		return "notice/notice";
	}
	@GetMapping("noticedetail/{boardId}")
	public String noticedetail(Model model,@PathVariable("boardId") String boardId) {
		service.selectList(model, boardId);
		return "notice/notice_detail";
	}
	
	@GetMapping("search")
	public String search(@RequestParam String category, @RequestParam String search,Model model ) {
		model.addAttribute("search", search);
		nrservice.search(category, search, model);
		return "main/search";
	}
}
