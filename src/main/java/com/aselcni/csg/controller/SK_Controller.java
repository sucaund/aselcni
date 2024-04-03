package com.aselcni.csg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aselcni.csg.service.SK_Service_Interface;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class SK_Controller {
	
	private SK_Service_Interface sk_ServicInterface;
	
	//네비바에서 메인페이지로 이동 ==> 발주관리 메인페이지 => 발주현황 나오는곳 + 신규등록, 삭제, 검색하는곳 + 페이징
	@RequestMapping(value="purchase")
	public String Sk_Purchase() {
		System.out.println("내폼에 연결이 드디어 되었습니다요");
		return "csg/CSG_purchase";
	}
	
	//CSG_purchase에서 신규등록을 누르면 a태그로 옮기게 되는 발주등록 폼
	@RequestMapping(value="purchaseItemForm")
	public String Sk_PurchasList() {
		System.out.println("자재 입력해봐라 시방방");
		return "csg/CSG_purchaseItem2";
	}
	
	
	//CSG_purchaseItem2 발주등록에서 추가를 누르면 값이 CSG_ItemInsert.jsp로 들어가게 됨 
	@RequestMapping(value="CSG_ItemInsertForm")
	public String SK_ItemInput() {
		System.out.println("자재 등록을 할건데 여기서 자재등록할떄 모달 1번 쓰려고 폼으로 뺸 거임");
		return "csg/CSG_ItemInsert";
	}

}
