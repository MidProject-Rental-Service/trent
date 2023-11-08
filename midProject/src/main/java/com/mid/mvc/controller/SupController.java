package com.mid.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.PriceVO;
import com.mid.mvc.service.GoodsService;
import com.mid.mvc.service.UserService;

@Controller
@RequestMapping("/supplier")
public class SupController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private GoodsService goodsService;

	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		System.out.println("Super_controller호출");
		return "supplier/" + step;
	}
	
	//상품 전체 검색
	@RequestMapping("/productmange.do")
	public void GoodsList(GoodsVO vo, Model model) { 
		List<GoodsVO> result = goodsService.getGoodsList(vo); 
		model.addAttribute("goodsList",result);
	}
	
	//해당 상품 가격 정보 등록 (페이지 띄우기)
	@RequestMapping("/priceregister.do")
	public void priceregister(GoodsVO vo, Model m) { 
		 GoodsVO result = goodsService.getGoodsById(vo);
		    m.addAttribute("product", result);
	}
	
	//해당 제품 가격정보 등록
	@RequestMapping("/insertPrice.do")
	public String insertPrice(PriceVO vo, Model m) {
		goodsService.insertPrice(vo);
		return "redirect:/supplier/pricemange.do";
	}
	
	//해당 제품 가격정보 수정
	@RequestMapping("/modifyPrice.do")
	public String modifyPrice(PriceVO vo, Model m) {
		goodsService.modifyPrice(vo);
		return "redirect:/supplier/pricemodify.do?p_id=";
	}
	   
	//가격정보 전체 검색
		@RequestMapping("/pricemange.do")
		public void getPriceList(PriceVO vo, Model model) { 
			List<PriceVO> result = goodsService.getPriceList(vo); 
			model.addAttribute("priceList",result);
		}
	  
	
    @RequestMapping("/logout.do")
    public String logout(HttpSession session) {
        // 세션을 제거하여 로그아웃 처리
        session.invalidate();
        
        // 로그아웃 후 리다이렉트
        return "redirect:/user/main.do";
    }

	
	
	
}