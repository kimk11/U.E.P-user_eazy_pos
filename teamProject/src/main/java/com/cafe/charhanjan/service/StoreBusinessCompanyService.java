/* 2018.09.27 송유빈 StoreBusinessCompanyService */

package com.cafe.charhanjan.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe.charhanjan.dao.StoreBusinessCompanyDao;
import com.cafe.charhanjan.dto.StoreBusinessCompany;

@Service
@Transactional
public class StoreBusinessCompanyService {
	@Autowired
	private StoreBusinessCompanyDao storeBusinessCompanyDao;
	
// 	거래처 등록
	public int addStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		storeBusinessCompany.setStoreBusinessCompanyCode(storeBusinessCompanyDao.getStoreBusinessCompanyCode());
		return storeBusinessCompanyDao.insertStoreBusinessCompany(storeBusinessCompany);
	}
	
// 	거래처 수정
	public int modifyStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		return storeBusinessCompanyDao.updateStoreBusinessCompany(storeBusinessCompany);
	}

// 	거래처 삭제
	public int removeStoreBusinessCompany(String storeBusinessCompanyCode) {
		return storeBusinessCompanyDao.deleteStoreBusinessCompany(storeBusinessCompanyCode);
	}

//	거래처 리스트
	public List<StoreBusinessCompany> getStoreBusinessCompanyList(int currentPage, int pagePerRow) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", (currentPage-1)*pagePerRow);				
		map.put("pagePerRow", pagePerRow);									
		return storeBusinessCompanyDao.selectStoreBusinessCompanyList(map);
	}
	
//	 currentPage, lastPage, companyCount Map
	public HashMap<String, Integer> getStoreBusinessCompanyMap(int currentPage, int pagePerRow) {
		int companyCount = getStoreBusinessCompanyCount();
		int lastPage = (int)(Math.ceil((double)companyCount/pagePerRow));
		HashMap<String, Integer> map = new HashMap<String, Integer>();		
		map.put("companyCount", companyCount);
		map.put("lastPage", lastPage);
		return map;
	}
	
	
//	총 거래처 수 
	public int getStoreBusinessCompanyCount() {
		return storeBusinessCompanyDao.getStoreBusinessCompanyCount();
	}


}
