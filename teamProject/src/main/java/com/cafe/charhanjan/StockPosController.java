package com.cafe.charhanjan;

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
//	 @RequestMapping(value={"/","/boardList"}, method = RequestMethod.GET)
//	    public String boardList(Model model, @RequestParam(value="currentPage", required=false, defaultValue="1") int currentPage) {
//	        int boardCount = boardService.getBoardCount();
//	        int pagePerRow = 10;
//	        int lastPage = (int)(Math.ceil((double)boardCount / pagePerRow));
//	        List<Board> list = boardService.getBoardList(currentPage, pagePerRow);
//	        model.addAttribute("currentPage", currentPage);
//	        model.addAttribute("boardCount", boardCount);
//	        model.addAttribute("lastPage", lastPage);
//	        model.addAttribute("list", list);
//	        return "boardList";
//	
	
	//거래처 입력 페이지 요청
    @RequestMapping(value="/addStoreBusinessCompany", method = RequestMethod.GET)
    public String addStoreBusinessCompany() {
        System.out.println("1. addStoreBusinessCompany 거래처 등록 페이지 요청");
        return "addStoreBusinessCompany";
    }
	
	//거래처 입력(액션) 요청 
    @RequestMapping(value="/addStoreBusinessCompany", method = RequestMethod.POST)
    public String addStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
        System.out.println(storeBusinessCompany);
        storeBusinessCompanyService.addStoreBusinessCompany(storeBusinessCompany);
        return "redirect:/getStoreBusinessCompanyList";	// 거래처 등록 후 거래처리스트로 리다이렉트(재요청)
    }
	
	// 거래서 수정 페이지 요청
	
	
	
	// 거래처 수정(액션) 요청
	
	
	
	// 거래처 삭제(액션) 요청
	
	

}
