package com.mid.mvc.controller;


import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.UserVO;
import com.mid.mvc.service.GoodsService;
import com.mid.mvc.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GoodsService goodsService;

	
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
	
	
}
