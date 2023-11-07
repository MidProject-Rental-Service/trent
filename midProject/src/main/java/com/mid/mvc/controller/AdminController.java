package com.mid.mvc.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.SupplierBoardVO;
import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserVO;
import com.mid.mvc.service.GoodsService;
import com.mid.mvc.service.SupplierBoardService;
import com.mid.mvc.service.UserBoardService;
import com.mid.mvc.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private UserService userService;

	@Autowired
	private GoodsService goodsService;

	@Autowired
	private UserBoardService userBoardService;
	
	@Autowired
	private SupplierBoardService supplierBoardServcie;
	

	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		System.out.println("Admin_controller호출");
		return  "admin/" + step;
	}




	//사용자 전체 검색
	@RequestMapping("/usermange.do")
	public void userList(UserVO vo, Model model) {
		System.out.println("usermange호출");
		List<UserVO> result = userService.getUserList(vo);
		model.addAttribute("userList",result);
	}

	//공급사 전체 검색
	@RequestMapping("/supplymange.do")
	public void supplyList(UserVO vo, Model model) {
		System.out.println("supply호출");
		List<UserVO> result = userService.getSupplyList(vo);
		model.addAttribute("supplyList",result);
	}

	//상품등록
	@RequestMapping("/productregister.do")
	public String productRegister(GoodsVO vo) throws IOException{
		System.out.println(vo.toString());
		goodsService.productRegister(vo);
		return "redirect:productmange.do";
	}

	//상품 전체 검색

	@RequestMapping("/productmange.do")
	public void GoodsList(GoodsVO vo, Model model) { 
		System.out.println("GoodsList-controller호출"); 
		List<GoodsVO> result = goodsService.getGoodsList(vo); 
		model.addAttribute("goodsList",result); 
		System.out.println("result :" + result);}	
	
	
	  //관리자 페이지 대시보드 사용자 공급사 문의 5개만 검색
	  @RequestMapping("/admin_index.do") 
	  public void boardList(UserBoardVO vo, SupplierBoardVO vo2, Model model) { 
	  List<UserBoardVO>result = userBoardService.dashboardUserBoardList(vo);
	  List<SupplierBoardVO>result2 = supplierBoardServcie.dashboardSupplierBoardList(vo2);
	  System.out.println(result);
	  System.out.println(result2);
	  model.addAttribute("userBoardList",result);
	  model.addAttribute("supplierBoardList",result2); }
	 
	  //관리자 페이지에서 더보기 누르면 사용자 공급사 문의 전체 검색
	  @RequestMapping("/userinquiry.do")
	  public void boardList(Model m) {
		  HashMap map = new HashMap();
	      userBoardService.getUserBoardList(map);
	      List<UserBoardVO>result = userBoardService.getUserBoardList(map);
	      System.out.println(result);
	      m.addAttribute("userBoardList",result);		  
		  
	  }
	  //사용자 문의 상세보기
	  @RequestMapping("/userinquiryanswer.do")
	  public void getUserBoard(UserBoardVO vo, Model m) {
		  UserBoardVO result = userBoardService.getUserBoard(vo);
		  m.addAttribute("userBoard", result);
		  System.out.println(m.toString());

	  }	  
	  
	  //사용자 문의 답변하기 Insert
	  @RequestMapping("/userinquiryanswering.do")
	  public String insertAnswer(UserBoardVO vo, Model m) {
		  userBoardService.insertAnswer(vo);
		  System.out.println("ub_answer : " + vo.getUb_answer());
		  System.out.println("ub_id : "+ vo.getUb_id() );
		  return "redirect:userinquiry.do";
		  

	  }	 	
	  

}
