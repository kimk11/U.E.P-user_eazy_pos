package com.cafe.charhanjan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.charhanjan.dto.RootMenuCate;
import com.cafe.charhanjan.dto.StoreMenu;
import com.cafe.charhanjan.service.*;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

/*
 * 홈페이지 요청 컨트롤러
 * */
@Controller
public class HomePageController {
	
	@Autowired
	private StoreMenuService storeMenuService;
	
	@RequestMapping(value= "/homepage", method=RequestMethod.GET)
	public String homepage() {
		return "homePage/homePage";
	}
	
	// 전체메뉴 입력 페이지 요청
	@RequestMapping(value= "/all_menu_insert", method=RequestMethod.GET)
	public String allMenuInsert(Model model) {
		List<RootMenuCate> list = storeMenuService.getRootMenuCate();
		model.addAttribute("list", list);
		return "homePage/menu/all_menu_insert";
	}
	
	// 전체메뉴 입력(액션) 요청
	@RequestMapping(value="/all_menu_insert", method=RequestMethod.POST)
	public String allMenuInsert(StoreMenu storeMenu) {
		storeMenuService.addStoreMenu(storeMenu);
		return "redirect:/all_menu_list";
	}
	
	//전체메뉴 리스트 페이지 요청
	@RequestMapping(value={"/", "/all_menu_list"}, method=RequestMethod.GET)
	public String allMenuList(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		int boardCount = storeMenuService.getStoreMenuCount();
        int pagePerRow = 10;
        int lastPage = (int)(Math.ceil(boardCount / pagePerRow));
        int totalRowCount = storeMenuService.getStoreMenuCount();
        List<StoreMenu> list = storeMenuService.getStoreMenuList(currentPage, pagePerRow);
        model.addAttribute("currentPage", currentPage);
        model.addAttribute("boardCount", boardCount);
        model.addAttribute("lastPage", lastPage);
        model.addAttribute("totalRowCount", totalRowCount);
        model.addAttribute("list", list);
		return "homePage/menu/all_menu_list";
	}
	
}