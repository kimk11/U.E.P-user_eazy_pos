package com.cafe.charhanjan;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.charhanjan.dto.RootMenu;
import com.cafe.charhanjan.service.RootMenuService;

@Controller
public class MenuPosController {
	
	@Autowired
	private RootMenuService rootMenuService;
	
//	메뉴 추가화면 매핑 pos/salesMenu/manuInsert
	@RequestMapping(value="/pos/salesMenu/manuInsert", method=RequestMethod.GET)
	public String maenuInsert() {
		return "pos/salesMenu/sales_menu_insert";
	}
//	메뉴 추가액션 매핑
	@RequestMapping(value="/pos/salesMenu/menuInsertAction", method=RequestMethod.POST)
	public String maenuInsertAction(RootMenu rootMenu) {
		rootMenuService.addRootMenu(rootMenu);
		return "pos/salesMenu/sales_menu_insert";
	}
	
// 메뉴 리스트 pos/salesMenu/menulist
	@RequestMapping(value="/pos/salesMenu/salesMenu", method=RequestMethod.POST)
	public String salesMenu(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
		
		return "pos/salesMenu/sales_menu";
	}
}
