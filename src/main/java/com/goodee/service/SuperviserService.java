package com.goodee.service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.goodee.dao.SuperviserDAO;
import com.goodee.vo.BoardVO;
import com.goodee.vo.MemberVO;
import com.goodee.vo.OrderjoinVO;
import com.goodee.vo.ProductOptionVO;
import com.goodee.vo.ShopVO;

@Service
public class SuperviserService  {
	private SuperviserDAO superdao;

	public SuperviserService(SuperviserDAO superdao) {
		super();
		this.superdao = superdao;
	}
	
//	public void viseradd(ShopVO vo, @RequestParam("thumnail") MultipartFile thumnail,
//						@RequestParam("contImage") MultipartFile contImage)  throws IOException{
//		System.out.println("서비스1");
//		superdao.addproc(vo);
//		
////		thumnail.transferTo(Path.get("C:/JavaTPC/Goodee_Spring_workspace/Board5/"));
//	
//		
////		try {
////			
////			
////            thumnail.transferTo(path1);
////            //vo.setPic1(Path + pic1File.getOriginalFilename());
////            vo.setProductImage(path1 + thumnail.getOriginalFilename());
////         } catch (IllegalStateException e) {
////            // TODO Auto-generated catch block
////            e.printStackTrace();
////         } catch (IOException e) {
////            // TODO Auto-generated catch block
////            e.printStackTrace();
////         }
//		
//	}
	public void viseradd(String[] opts, ShopVO vo){
		superdao.addproc(vo);
		ProductOptionVO opvo = new ProductOptionVO();
		opvo.setProductId(vo.getProductId());
		for(int i = 0 ; i< opts.length; i++) {
			opvo.setOption(opts[i]);
			superdao.addprodoption(opvo);
		}
		 
	}

	
	   public void godelete(int productId) {
		      System.out.println("오나안오나");
		      superdao.godelete(productId);
		   }

	public void updateInfo(ShopVO vo) {
		superdao.updateInfo(vo);
	}
	
	public void deleteBoard(BoardVO vo) {
		superdao.deleteBoard(vo);
	}
	
	public void getList(String boardCategory,Model model) {
		
		model.addAttribute("list",superdao.getList(boardCategory));
		
	}
	public void createboard(BoardVO vo) {
		superdao.createboard(vo);
	}
	
	public void getCSOrder(String id,String orderStatus,Model model) {
		
		model.addAttribute("list",superdao.getCSOrder(id,orderStatus));
	}
	public void CSOrderModify(OrderjoinVO vo) {
		superdao.CSOrderModify(vo);
		
	}
	public void memberInfo(MemberVO vo,Model model) {
		
		model.addAttribute("list",superdao.memberInfo(vo));
	}
}
