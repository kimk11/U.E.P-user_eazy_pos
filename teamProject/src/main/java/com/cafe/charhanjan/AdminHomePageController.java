// 2018. 9. 21(금) 이원상
package com.cafe.charhanjan;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.charhanjan.dto.RootStockCate;
import com.cafe.charhanjan.service.RootStockCateService;

// 관리자 홈페이지 컨트롤러

@Controller
public class AdminHomePageController {
	
	@Autowired private RootStockCateService rootStockCateService;
	
//homePage/admin/stock/rootStockCateList
	@RequestMapping(value= "/", method=RequestMethod.GET)
	public String rootStockCateList(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage, @RequestParam(value="pagePerRow", required=false, defaultValue="5") int pagePerRow) {
		List<RootStockCate> list = rootStockCateService.getRootStockCateList();

		model.addAttribute("list", list);
		return "homePage/admin/stock/root_stock_cate_list";			// 본사 관리자 재고카테고리 리스트
	}
	

}
