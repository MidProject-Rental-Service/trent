package com.mid.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mid.mvc.domain.UserVO;
import com.mid.mvc.service.UserService;

@Controller
@RequestMapping("/supplier")
public class SupController {
	
	@Autowired
	private UserService userService;

	
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		System.out.println("Super_controller호출");
		return "supplier/" + step;
	}
	

	
	
	
}