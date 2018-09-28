package com.cafe.charhanjan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe.charhanjan.dto.RootStockCate;
import com.cafe.charhanjan.service.RootStockCateService;

/*
 * 홈페이지 요청 컨트롤러
 * */
@Controller
public class HomePageController {
	
	@Autowired private RootStockCateService rootStockCateService;
	
	@RequestMapping(value= {"","/homePage"}, method=RequestMethod.GET)
	public String homepage() {
//		List<RootStockCate> list = rootStockCateService.getRootStockCateList();

		
		return "homePage/homepage";
	}
}
