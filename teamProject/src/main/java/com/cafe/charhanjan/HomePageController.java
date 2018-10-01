package com.cafe.charhanjan;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * 홈페이지 요청 컨트롤러
 * */
@Controller
public class HomePageController {
	
	@RequestMapping(value= {"/","/homepage"}, method=RequestMethod.GET)
	public String homepage() {
		return "homePage/homePage";
	}
}
