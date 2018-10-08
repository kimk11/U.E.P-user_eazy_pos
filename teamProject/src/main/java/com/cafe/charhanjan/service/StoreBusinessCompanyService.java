/* 2018.09.27 송유빈 StoreBusinessCompanyService */

package com.cafe.charhanjan.service;

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
	private Map<String,Integer> map;
	
	public int addStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		return storeBusinessCompanyDao.insertStoreBusinessCompany(storeBusinessCompany);
	}
	
	public int modifyStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		return storeBusinessCompanyDao.updateStoreBusinessCompany(storeBusinessCompany);
	}
	
	public int removeStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		return storeBusinessCompanyDao.deleteStoreBusinessCompany(storeBusinessCompany);
	}
	
	public List<StoreBusinessCompany> getStoreBusinessCompanyList(int currentPage, int pagePerRow) {
		int companyCount = getStoreBusinessCompanyCount();
		int lastPage = (int)(Math.ceil((double)companyCount/pagePerRow));		
		map.put("startRow", (currentPage-1)*pagePerRow);				
		map.put("pagePerRow", pagePerRow);									
		map.put("companyCount", companyCount);
		map.put("lastPage", lastPage);
		return storeBusinessCompanyDao.selectStoreBusinessCompany(map);
	}
	
	public int getStoreBusinessCompanyCount() {
		return storeBusinessCompanyDao.selectStoreBusinessCompanyCount();
	}
}
