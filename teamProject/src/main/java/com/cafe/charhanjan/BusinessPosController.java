package com.cafe.charhanjan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BusinessPosController {
	// 포스기 영업 관리 화면
	@RequestMapping(value="/pos/business/businessPos", method = RequestMethod.GET)
	public String businessPos() {
		System.out.println("1. BusinessPosController 영업관리 화면 요청");
		return "pos/business/businessPos";
		
	}
}
