package com.mid.mvc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mid.mvc.domain.CardVO;
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
		HashMap map = new HashMap();
		List<GoodsVO> result = goodsService.getGoodsList(map); 
		model.addAttribute("goodsList",result);
	}
	
/*
     #############
	#   가격 관련 컨트롤러    #
	#############
*/	
	   
	//가격정보 전체 검색
		@RequestMapping("/pricemange.do")
		public void getPriceList(PriceVO vo, Model model) { 
			List<PriceVO> result = goodsService.getPriceList(vo); 
			model.addAttribute("priceList",result);
	}
	
	//가격 정보 등록 (페이지 띄우기)
	@RequestMapping("/priceregister.do")
	public void priceregister(GoodsVO vo, Model m) { 
		 GoodsVO result = goodsService.getGoodsById(vo);
		 m.addAttribute("product", result);
	}
	
	//가격정보 등록
	@RequestMapping("/insertPrice.do")
	public String insertPrice(PriceVO vo, Model m) {
		goodsService.insertPrice(vo);
		return "redirect:/supplier/pricemange.do?id="+vo.getId();
	}
	
	//가격 정보 수정 (페이지 띄우기)
		@RequestMapping("/pricemodify.do")
		public void priceModifyMange(PriceVO vo, Model m) { 
			PriceVO result = goodsService.getPriceById(vo);
			m.addAttribute("price", result);
		}
	
	//가격정보 수정
	@RequestMapping("/updatePrice.do")
	public String updateprice(PriceVO vo, Model m) {
		goodsService.updatePrice(vo);
		return "redirect:pricemodify.do?p_id="+vo.getP_id();
	}
	
	//가격정보 삭제하기
	@RequestMapping("/deletePrice.do")
	public String deleteprice(PriceVO vo, Model m) {
		goodsService.deletePrice(vo);
		return "redirect:pricemange.do?id="+vo.getId();
	}

/*
    #############
	#   카드 관련 컨트롤러    #
	#############
*/	
	
	//카드 목록 검색
	@RequestMapping("/cardmange.do")
	public void getCardList(CardVO vo, Model model) { 
		List<CardVO> result = goodsService.getCardList(vo); 
		model.addAttribute("cardList",result);
	}
		
	//카드 등록
	@RequestMapping("/insertCard.do")
	public String insertCard(CardVO vo) throws IOException{
		goodsService.insertCard(vo);
		return "redirect:cardmange.do?id="+vo.getId();
	}
	
	//카드 정보 수정 (페이지 띄우기)
	@RequestMapping("/cardmodify.do")
	public void cardmodify(CardVO vo, Model m) { 
		CardVO result = goodsService.getCardById(vo);
		m.addAttribute("card", result);
	}

	
	//카드 수정
	@RequestMapping("/updateCard.do")
	public String updateCard(CardVO vo, Model m) {
		goodsService.updateCard(vo);		
		return "redirect:cardmange.do?id="+vo.getId();
	}
	
	//카드 삭제하기
	@RequestMapping("/deleteCard.do")
	public String deleteCard(CardVO vo, Model m) {
		goodsService.deleteCard(vo);
		
		return "redirect:cardmange.do?id="+vo.getId();
	}
	  
	
    @RequestMapping("/logout.do")
    public String logout(HttpSession session) {
        // 세션을 제거하여 로그아웃 처리
        session.invalidate();
        
        // 로그아웃 후 리다이렉트
        return "redirect:/user/main.do";
    }

	
	
	
}