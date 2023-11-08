package com.mid.mvc.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mid.mvc.domain.GoodsVO;
import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserRentalVO;
import com.mid.mvc.domain.UserReviewVO;
import com.mid.mvc.domain.UserVO;
import com.mid.mvc.service.GoodsService;
import com.mid.mvc.service.UserBoardService;
import com.mid.mvc.service.UserReviewService;
import com.mid.mvc.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {

	@Autowired
	private UserService userServiceImpl;

	@Autowired
	private GoodsService goodsServiceImpl;
	
	@Autowired
	@Qualifier("userReviewServiceImpl")
	private UserReviewService userReviewService;

	@Autowired
	@Qualifier("userBoardServiceImpl")
	private UserBoardService userBoardService;

	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "user/" + step;
	}

	@RequestMapping("/insertUser.do") // 회원가입
	public String insertUser(UserVO vo, Model m) {
		userServiceImpl.insertUser(vo);

		return "redirect:login.do";
	}

	@RequestMapping("/idCheck.do") // id 중복체크
	@ResponseBody
	public String idCheck(String id) {
		int result = userServiceImpl.idCheck(id);
		return "" + result;
	}

	@RequestMapping("/loginCheck.do") // 로그인
	public String loginCheck(UserVO vo, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		// 서비스를 사용하여 로그인 검증
		vo = userServiceImpl.loginCheck(vo);
		System.out.println("loginCheck호출 =====> vo: " + vo);

		if (vo != null) { // 로그인 성공
			// 사용자 정보를 세션에 저장
			session.setAttribute("loggedInUser", vo);

			// 로그인 성공 시
			String role = vo.getRole();
			if ("user".equals(role)) {
				// 사용자 역할(role)이 null 또는 비어 있으면 일반 사용자로 간주
				return "redirect:/user/main.do"; // 일반 사용자 페이지로 리디렉션
			} else if ("admin".equals(role)) {
				// 사용자 역할이 "admin"인 경우, 관리자로 간주
				return "redirect:/admin/admin_index.do"; // 관리자 페이지로 리디렉션
			} else if ("supplier".equals(role)) {
				// 사용자 역할이 "supplier"인 경우, 공급사로 간주
				return "redirect:/supplier/supplier_index.do"; // 공급사 페이지로 리디렉션
			}
		}
		// 로그인 실패 시
		return "user/login_failed";
	}

	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		// 세션을 제거하여 로그아웃 처리
		session.invalidate();

		// 로그아웃 후 리다이렉트
		return "redirect:/user/main.do";
	}

	@RequestMapping("/updateUser.do") // 회원정보 수정
	public String updateUser(UserVO vo) {
		userServiceImpl.updateUser(vo);
		return "redirect:login.do";
	}

	// 리뷰관리
	@RequestMapping("/reviewManagement.do")
	public void reviewManagement(Model m, HttpSession session) {
		UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
		String loggedInUserId = loggedInUser.getId();

		HashMap map = new HashMap();
		map.put("id", loggedInUserId);

		userReviewService.getUserReviewList(map);
		List<UserReviewVO> result = userReviewService.getUserReviewList(map);
		m.addAttribute("reviewList", result);

	}
	
	// 리뷰 작성
	@RequestMapping("/reviewWrite.do")
	public void reviewWrite(Model m, UserReviewVO vo, @RequestParam("r_id") String reviewId, HttpSession session) {
		session.setAttribute("selectedReviewId", reviewId);

		UserReviewVO result = userReviewService.getUserReview(vo);
		m.addAttribute("userReview", result);

	}
	
	// 리뷰 저장
	@RequestMapping("/saveUserReview.do")
	public String saveUserReview(UserReviewVO vo) {
		System.out.println(" saveUserReview:" + vo);
		userReviewService.saveUserReview(vo);
		return "redirect:reviewManagement.do";
	}
	

	
	// 리뷰 삭제
	@RequestMapping(value="reviewUserDelete.do" ,method=RequestMethod.POST)
	@ResponseBody 
	public  String reviewUserDelete(@RequestParam(value = "reviewIds[]") List<Integer> reviewIds) {
		System.out.println("===> reviewUserDelete 호출");
		System.out.println("===>" + reviewIds);
		 for (Integer r_id : reviewIds) {
		        UserReviewVO vo = new UserReviewVO();
		        vo.setR_id(r_id);
		        userReviewService.deleteUserReview(vo);
		 }
	  return "success";
	}
	// user review end



	// 장바구니
	@RequestMapping("/shopping-cart.do")
	public String shoppingCart() {
		return "shopping-cart";
	}
	
	
	
	// 1:1문의 목록
	@RequestMapping("/inquiryList.do")
	public void inquiryList(Model m, HttpSession session, String searchCondition, String searchKeyword,
			String datepicker1, String datepicker2) {

		UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
		String loggedInUserId = loggedInUser.getId();

		HashMap map = new HashMap();
		map.put("id", loggedInUserId);
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);
		map.put("startDate", datepicker1);
		map.put("endDate", datepicker2);

		
		List<UserBoardVO> result = userBoardService.getUserBoardList(map);
		m.addAttribute("userBoardList", result);
	}
	
	// 문의 작성화면 
	@RequestMapping("/inquiryWrite.do")
	public String inquiryWrite() {

		return "user/inquiryWrite";
	}
	
	// 문의 상세보기 
	@RequestMapping("/inquiry.do")
	public void getUserBoard(UserBoardVO vo, Model m) {
		UserBoardVO result = userBoardService.getUserBoard(vo);
		m.addAttribute("userBoard", result);

	} 

    // 문의 작성 저장
    @RequestMapping("/saveUserBoard.do")
    public String saveUserBoard(UserBoardVO vo) {
    	System.out.println(" saveUserBoard:" + vo );
    	userBoardService.insertUserBoard(vo);
        return "redirect:inquiryList.do";
    }
    
 // 신청목록 
 	@RequestMapping("/applicationList.do")
 	public void rentalList(Model m, HttpSession session, String searchCondition, String searchKeyword,
 		String datepicker1, String datepicker2) {

 		UserVO loggedInUser = (UserVO) session.getAttribute("loggedInUser");
 		String loggedInUserId = loggedInUser.getId();

 		HashMap map = new HashMap();
 		map.put("id", loggedInUserId);
 		map.put("searchCondition", searchCondition);
 		map.put("searchKeyword", searchKeyword);
 		map.put("startDate", datepicker1);
 		map.put("endDate", datepicker2);

 		//userBoardService.getUserRentalList(map);
 		List<UserRentalVO> result = userBoardService.getUserRentalList(map);

 		m.addAttribute("userRentalList", result);
 	}
    
    //상품 전체 검색
    @RequestMapping("/shop.do")
	public void GoodsList(GoodsVO vo, Model m) {
    	System.out.println("화면에서 넘겨오는 값:" + vo.toString());
		List<GoodsVO> result = goodsServiceImpl.getGoodsList(vo);
		m.addAttribute("goodsList", result);
	}
    
    // 제품군 검색 (좌측패널)
    @RequestMapping(value="/searchCategory",method=RequestMethod.POST)
    @ResponseBody
    public List<GoodsVO> searchByCategory(
    		// 요소들이 전부다 전송되지 않아도 에러나지않게 처리 
            @RequestParam(required = false) String c_name,
            @RequestParam(value = "selectedBrands[]", required = false) List<String> selectedBrands,
            @RequestParam(required = false) Integer minPrice,
            @RequestParam(required = false) Integer maxPrice) {

        System.out.println("===> " + c_name);
        System.out.println("Selected Brands: " + selectedBrands);
        System.out.println("Min Price: " + minPrice);
        System.out.println("Max Price: " + maxPrice);

        // 여기서 선택된 브랜드와 가격을 이용하여 SQL 쿼리를 생성하여 처리합니다.

        return goodsServiceImpl.getCategoryGoodsList(c_name,selectedBrands,minPrice,maxPrice);
    }

    
}