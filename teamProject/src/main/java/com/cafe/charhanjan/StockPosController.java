package com.cafe.charhanjan;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cafe.charhanjan.dto.StoreBusinessCompany;
import com.cafe.charhanjan.service.StoreBusinessCompanyService;



@Controller
public class StockPosController {
	@Autowired
	private StoreBusinessCompanyService storeBusinessCompanyService;
	
/* 거래처 addStoreBusinessCompany */
	// 거래처 리스트 
	 @RequestMapping(value="/pos/stock/storeBusinessCompanyList", method = RequestMethod.GET)
	    public String getStoreBusinessCompany(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage,@RequestParam(value="pagePerRow", required=false, defaultValue="5") int pagePerRow) {
		 	System.out.println("3. addStoreBusinessCompany 거래처 리스트 ");
	    	HashMap<String,Integer> map = (HashMap<String, Integer>) storeBusinessCompanyService.getStoreBusinessCompanyList(currentPage, pagePerRow);
			model.addAttribute("currentPage", currentPage);
			model.addAttribute("lastPage", map.get("lastPage"));
			model.addAttribute("companyCount", map.get("companyCount"));
			List<StoreBusinessCompany> list = (List<StoreBusinessCompany>)map;
			model.addAttribute("list", list);
	        return "pos/stock/store_business_company_list";
	 }
	
	//거래처 입력 페이지 요청
    @RequestMapping(value="/pos/stock/addStoreBusinessCompany", method = RequestMethod.GET)
    public String addStoreBusinessCompany() {
        System.out.println("1. addStoreBusinessCompany 거래처 등록 페이지 요청");
        return "pos/stock/store_business_company_insert";
    }
	
	//거래처 입력(액션) 요청 
    @RequestMapping(value="/pos/stock/addStoreBusinessCompanyAction", method = RequestMethod.POST)
    public String addStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
    	System.out.println("2. addStoreBusinessCompany 거래처 등록 액션 요청");
    	System.out.println(storeBusinessCompany);
        storeBusinessCompanyService.addStoreBusinessCompany(storeBusinessCompany);
        return "redirect:/pos/stock/store_business_company_list";	// 거래처 등록 후 거래처리스트로 리다이렉트(재요청)
    }
	
/*	// 거래서 수정 페이지 요청
    @RequestMapping(value="/modifyStoreBusinessCompany", method = RequestMethod.GET)
    public String boardModify(Model model, @RequestParam(value="storeBusinessCompanyCode", required=true) String storeBusinessCompanyCode, @RequestParam(value="storeCode") String storeCode){
        StoreBusinessCompany storeBusinessCompany = storeBusinessCompanyService.modifyStoreBusinessCompany(storeBusinessCompany)
        model.addAttribute("storeBusinessCompany", storeBusinessCompany);
        return "pos/stock/store_business_company_update";
    }
	 */
	
	// 거래처 수정(액션) 요청

	
	
	// 거래처 삭제(액션) 요청
	
	

}
