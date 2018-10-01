package com.cafe.charhanjan;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.charhanjan.dto.RootStockCate;
import com.cafe.charhanjan.dto.StoreMenu;
import com.cafe.charhanjan.service.RootMenuService;
import com.cafe.charhanjan.service.StoreMenuService;

@Controller
public class StoreAdminHomePageController {
		
	@Autowired
	private RootMenuService rootMenuService;
	private StoreMenuService storeMenuService;
	
	@RequestMapping(value= {"/homepage/storeAdmin/homePageAdmin"}, method=RequestMethod.GET)
	public String homepageAdmin() {
		return "homePage/storeAdmin/hompage_admin";
	}
	
	// 입력페이지 요청
    @RequestMapping(value="/homePage/storeAdmin/menu/storeMenuInsert", method = RequestMethod.GET)
    public String storeMenuInsert() {
        System.out.println("allMenuInsert form 페이지 요청");
        return "homePage/storeAdmin/menu/all_menu_insert";
    }
    
    // 입력(액션) 요청
    @RequestMapping(value="/homePage/storeAdmin/menu/storeMenuInsert", method = RequestMethod.POST)
    public String storeMenuInsertAction(StoreMenu storeMenu) {
    	System.out.println(storeMenu);
    	return "/homePage/storeAdmin/all_menu_insert";
    }
    
    @RequestMapping(value="/homepage/storeAdmin/menu/storeMenuUpdate", method = RequestMethod.GET)
    public String storeMenuUpate() {
    	return "homePage/storeAdmin/all_menu_update";
    }
    
    @RequestMapping(value="/homePage/storeAdmin/menu/storeMenuUpdate", method = RequestMethod.POST)
    public String storeMenuUpdateAction(StoreMenu storeMenu) {
    	System.out.println(storeMenu);
    	return "homePage/storeAdmin/all_menu_update";
    }
    
    @RequestMapping(value="homePage/storeAdmin/menu/storeMenuDelete", method = RequestMethod.GET)
    public String storeMenuDelete() {
    	return "homePage/storeAdmin/all_menu_delete";
    }
    
    @RequestMapping(value= "/homePage/storeAdmin/menu/storeMenuList", method=RequestMethod.GET)
	public String storeMenuList(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage, @RequestParam(value="pagePerRow", required=false, defaultValue="5") int pagePerRow) {
		HashMap<String,Integer> map = (HashMap<String, Integer>) storeMenuService.getStoreMenuList(currentPage, pagePerRow);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("lastPage", map.get("lastPage"));
		model.addAttribute("rootStockCateCount", map.get("rootStockCateCount"));
		List<StoreMenu> list = (List<StoreMenu>)map;
		model.addAttribute("list", list);
		return "homePage/storeAdmin/menu/all_menu";			
    }
}
