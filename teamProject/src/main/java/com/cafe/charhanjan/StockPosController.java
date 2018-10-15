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
		 	List<StoreBusinessCompany> list = storeBusinessCompanyService.getStoreBusinessCompanyList(currentPage, pagePerRow);
	    	HashMap<String,Integer> map = storeBusinessCompanyService.getStoreBusinessCompanyMap(currentPage, pagePerRow);    // 작업중, 서비스에 메서드 추가해서 호출
	    	model.addAttribute("currentPage", currentPage);
			model.addAttribute("lastPage", map.get("lastPage"));
			model.addAttribute("companyCount", map.get("companyCount"));
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
        return "redirect:/pos/stock/storeBusinessCompanyList";	// 거래처 등록 후 거래처리스트로 리다이렉트(재요청)
    }
	
	// 거래서 수정 페이지 요청
    @RequestMapping(value="/pos/stock/modifyStoreBusinessCompany", method = RequestMethod.GET)
	public String modifyStoreBusinessCompany() {
		System.out.println("4. modifyStoreBusinessCompany 거래처 수정 페이지 요청");
		return "pos/stock/store_business_company_update";
    }
	// 거래처 수정(액션) 요청
    @RequestMapping(value="/pos/stock/modifyStoreBusinessCompany", method = RequestMethod.GET)
 	public String modifyStoreBusinessCompany(@RequestParam(value="storeBusinessCompanyCode",required=true) String storeBusinessCompanyCode) {
 		System.out.println("5. modifyStoreBusinessCompany 거래처 수정(액션) 요청");
 		storeBusinessCompanyService.modifyStoreBusinessCompany(storeBusinessCompany);
 		return "redirect:/pos/stock/storeBusinessCompanyList";
     }
	
	
	// 거래처 삭제(액션) 요청
	@RequestMapping(value="/pos/stock/removeStoreBusinessCompanyAction", method = RequestMethod.GET)
	public String removeStoreBusinessCompany(@RequestParam(value="storeBusinessCompanyCode",required=true) String storeBusinessCompanyCode) {
		System.out.println("3. removeStoreBusinessCompany 거래처 삭제 액션 요청");
		System.out.println(storeBusinessCompanyCode + "<--storeBusinessCompanyCode");
		storeBusinessCompanyService.removeStoreBusinessCompany(storeBusinessCompanyCode);
		return "redirect:/pos/stock/storeBusinessCompanyList";
	}

}
