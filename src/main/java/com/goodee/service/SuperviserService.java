package com.goodee.service;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.SuperviserDAO;
import com.goodee.vo.BoardVO;
import com.goodee.vo.ShopVO;

@Service
public class SuperviserService {
	private SuperviserDAO superdao;

	public SuperviserService(SuperviserDAO superdao) {
		super();
		this.superdao = superdao;
	}
	
	public void viseradd(ShopVO vo) {
		System.out.println("서비스1");
		superdao.addproc(vo);
		System.out.println("서비스2");
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
		System.out.println("오류");
	}
}
