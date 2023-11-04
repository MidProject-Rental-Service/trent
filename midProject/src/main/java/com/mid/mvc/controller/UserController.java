package com.mid.mvc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mid.mvc.domain.UserBoardVO;
import com.mid.mvc.domain.UserReviewVO;
import com.mid.mvc.domain.UserVO;
import com.mid.mvc.service.UserBoardService;
import com.mid.mvc.service.UserReviewService;
import com.mid.mvc.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	@Autowired
	private UserService userServiceImpl;
	
	@Autowired
	@Qualifier("userReviewServiceImpl")
	private UserReviewService userReviewService;
	
	@Autowired
	@Qualifier("userBoardServiceImpl")
	private UserBoardService userBoardService;
	
	

	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "user/"+step;
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
    	return ""+result;
    }
    
    @RequestMapping("/loginCheck.do") // 로그인
    public String loginCheck(UserVO vo, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
        // 서비스를 사용하여 로그인 검증
    	vo = userServiceImpl.loginCheck(vo);
    	
        if (vo != null) { // 로그인 성공
            // 사용자 정보를 세션에 저장
            session.setAttribute("loggedInUser", vo);

            // 로그인 성공 시
            return "redirect:login_main.do";
        } else {
        	// 로그인 실패 시
            return "user/login_failed";
        }
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
    
    // user review start
    @RequestMapping("/reviewManagement.do")
    public void reviewManagement(Model m) {
    	HashMap map = new HashMap();

    	userReviewService.getUserReviewList(map);
    	List<UserReviewVO>result = userReviewService.getUserReviewList(map);
    	m.addAttribute("reviewList",result);
        
    }
    
    @RequestMapping("/reviewWrite.do")
    public String reviewWrite() {
    	
        return "user/reviewWrite";
    }
    
    @RequestMapping("/saveUserReview.do")
    public String saveUserReview(UserReviewVO vo) {
    	System.out.println(" saveUserBoard:" + vo );
    	userReviewService.insertUserReview(vo);
        return "redirect:inquiryList.do";
    }
    // user review end
    
    @RequestMapping("/reviewUserDelete.do")
    public String reviewUserDelete(UserReviewVO vo,@RequestParam List<Integer> selectedIds) {
    	System.out.println("=> reviewUserDelete 호출");
    
        return "reviewUserDelete";
    }

    // user board start
    @RequestMapping("/shopping-cart.do")
    public String shoppingCart() {
        return "shopping-cart";
    }
	
    @RequestMapping("/productManagement.do")
    public String productManagement() {
        return "productManagement";
    }
    
    
    @RequestMapping("/inquiryList.do")
    public void inquiryList(Model m,String searchCondition,String searchKeyword,
    										String datepicker1, String datepicker2) {
    	HashMap map = new HashMap();
		map.put("searchCondition",searchCondition);
		map.put("searchKeyword", searchKeyword);
		map.put("startDate", datepicker1);
		map.put("endDate", datepicker2);
		
    	userBoardService.getUserBoardList(map);
    	List<UserBoardVO>result = userBoardService.getUserBoardList(map);
    	m.addAttribute("userBoardList",result);
    }
    
    @RequestMapping("/inquiryWrite.do")
    public String inquiryWrite() {
    	
        return "user/inquiryWrite";
    }
    
    @RequestMapping("/inquiry.do")
	public void getUserBoard(UserBoardVO vo, Model m) {
		UserBoardVO result = userBoardService.getUserBoard(vo);
		m.addAttribute("userBoard", result);

	} // end of getBoard

    
    @RequestMapping("/saveUserBoard.do")
    public String saveUserBoard(UserBoardVO vo) {
    	System.out.println(" saveUserBoard:" + vo );
    	userBoardService.insertUserBoard(vo);
        return "redirect:inquiryList.do";
    }
    // user board end

}