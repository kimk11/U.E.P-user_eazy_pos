// 2018. 9. 21(금) 이원상
package com.cafe.charhanjan;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.charhanjan.dto.RootMenu;
import com.cafe.charhanjan.dto.RootStockCate;
import com.cafe.charhanjan.service.RootMenuService;
import com.cafe.charhanjan.service.RootStockCateService;
import com.cafe.charhanjan.service.RootStockMenuService;

// 관리자 홈페이지 컨트롤러

@Controller
public class AdminHomePageController {
	
	@Autowired private RootStockCateService rootStockCateService;
	@Autowired private RootStockMenuService rootStockMenuService;
	@Autowired private RootMenuService rootMenuService;
	
	@RequestMapping(value="/homePage/admin/homePageAdmin", method=RequestMethod.GET)
	public String homePageAdmin() {
		return "homePage/admin/homepage_admin";						// 본사 관리자 홈페이지
	}
	
	@RequestMapping(value= "/homePage/admin/stock/rootStockInsert", method=RequestMethod.GET)
	public String rootStockInsert() {
		return "homePage/admin/stock/root_stock_insert";			// 본사 관리자 재고등록 화면
	}
	
	@RequestMapping(value= "/homePage/admin/stock/rootStockInsertAction", method=RequestMethod.POST)
	public String rootStockInsertAction() {
		// Stockinsert(서비스 호출) 호출 후 포워딩 페이지 리턴 	
		return "homePage/admin/stock/root_stock_insert";			 
	}
	
	@RequestMapping(value= "/homePage/admin/stock/rootStockList", method=RequestMethod.GET)
	public String rootStockList() {
		return "homePage/admin/stock/root_stock_list";				// 본사 관리자 재고리스트 화면
	}
	
	@RequestMapping(value= "/homePage/admin/stock/rootStockUpdate", method=RequestMethod.GET)
	public String rootStockUpdate() {
		return "homePage/admin/stock/root_stock_update";			// 본사 관리자 재고수정 화면
	}
	
	@RequestMapping(value= "/homePage/admin/stock/rootStockDelete", method=RequestMethod.GET)
	public String rootStockDelete() {
		return "homePage/admin/stock/root_stock_delete";			// 본사 관리자 재고삭제 화면
	}
	
	@RequestMapping(value= "/homePage/admin/stock/rootStockDetail", method=RequestMethod.GET)
	public String rootStockDetail() {
		return "homePage/admin/stock/root_stock_detail";			// 본사 관리자 재고상세 화면
	}
	
//	@RequestMapping(value= "/homePage/admin/stock/rootStockCateList", method=RequestMethod.GET)
//	public String rootStockCateList(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage, @RequestParam(value="pagePerRow", required=false, defaultValue="5") int pagePerRow) {
//		HashMap<String,Integer> map = (HashMap<String, Integer>) rootStockCateService.getRootStockCateList(currentPage, pagePerRow);
//		model.addAttribute("currentPage", currentPage);
//		model.addAttribute("lastPage", map.get("lastPage"));
//		model.addAttribute("rootStockCateCount", map.get("rootStockCateCount"));
//		List<RootStockCate> list = (List<RootStockCate>)map;
//		model.addAttribute("list", list);
//		return "homePage/admin/stock/root_stock_cate_list";			// 본사 관리자 재고카테고리 리스트
//	}
	
	@RequestMapping(value= "/homePage/admin/stock/rootStockCateList", method=RequestMethod.GET)
	public String rootStockCateList(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage, @RequestParam(value="pagePerRow", required=false, defaultValue="5") int pagePerRow) {
		HashMap<String,Object> map = rootStockCateService.getRootStockCateList(currentPage, pagePerRow);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("lastPage", map.get("lastPage"));
		model.addAttribute("rootStockCateCount", map.get("rootStockCateCount"));
		model.addAttribute("list", map.get("list"));
		return "homePage/admin/stock/root_stock_cate_list";			// 본사 관리자 재고카테고리 리스트
	}
	
	@RequestMapping(value="/homePage/admin/menu/rootMenuInsert", method=RequestMethod.GET)
	public String rootMenuInsert() {
		return "homePage/admin/menu/all_menu_insert";
	}
	
	@RequestMapping(value="homePage/admin/menu/rootMenuInsert", method=RequestMethod.POST)
	public String rootMenuInsertAction(RootMenu rootMenu) {
		return "homePage/admin/menu/all_menu_insert";
	}
	
	@RequestMapping(value="homePage/admin/menu/rootMenuUpdate", method=RequestMethod.GET)
	public String rootMenuUpdate() {
		return "homePage/admin/menu/all_menu_update";
	}
	
	@RequestMapping(value="homePage/admin/menu/rootMenuUpdate", method=RequestMethod.POST)
	public String rootMenuUpdateAction() {
		return "homePage/admin/menu/all_menu_update";
	}
	
	@RequestMapping(value="homePage/admin/menu/rootMenuDelete", method=RequestMethod.GET)
	public String rootMenuDelete() {
		return "homePage/admin/menu/all_menu_delete";
	}
	
	@RequestMapping(value= "/homePage/admin/menu/rootMenuList", method=RequestMethod.GET)
	public String rootMenuList(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage, @RequestParam(value="pagePerRow", required=false, defaultValue="5") int pagePerRow) {
		HashMap<String,Integer> map = (HashMap<String, Integer>) rootMenuService.getRootMenuList(currentPage, pagePerRow);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("lastPage", map.get("lastPage"));
		model.addAttribute("rootStockCateCount", map.get("rootStockCateCount"));
		List<RootStockCate> list = (List<RootStockCate>)map;
		model.addAttribute("list", list);
		return "homePage/admin/menu/all_menu";			// 본사 관리자 재고카테고리 리스트
	}
	
}
