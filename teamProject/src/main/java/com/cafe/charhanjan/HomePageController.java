package com.cafe.charhanjan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cafe.charhanjan.dto.StoreMenu;
import com.cafe.charhanjan.service.*;

/*
 * 홈페이지 요청 컨트롤러
 * */
@Controller
public class HomePageController {
	
	@Autowired
	private StoreMenuService storeMenuService;
	
	@RequestMapping(value= {"","/homepage"}, method=RequestMethod.GET)
	public String homepage() {
		return "homePage/homePage";
	}
	
	// 전체메뉴 입력 페이지 요청
	@RequestMapping(value= "/", method=RequestMethod.GET)
	public String allMenuInsert() {
		return "homePage/menu/all_menu_insert";
	}
	
	// 전체메뉴 입력(액션) 요청
	@RequestMapping(value="/all_menu_insert", method=RequestMethod.POST)
	public String allMenuInsert(StoreMenu storeMenu) {
		
		storeMenuService.addStoreMenu(storeMenu);
		return "redirect:/homePage/menu/all_menu_list";
	}
	
	//전체메뉴 리스트 페이지 요청
	@RequestMapping(value="/all_menu_list", method=RequestMethod.GET)
	public String allMenuList() {
		return "homePage/menu/all_menu_list";
	}
}