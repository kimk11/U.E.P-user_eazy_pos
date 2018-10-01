/* 2018.09.27 송유빈 StoreBusinessCompanyService */

package com.cafe.charhanjan.service;

import java.util.List;

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
	
	public int addStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		return storeBusinessCompanyDao.insertStoreBusinessCompany(storeBusinessCompany);
	}
	
	public int modufyStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		return storeBusinessCompanyDao.updateStoreBusinessCompany(storeBusinessCompany);
	}
	
	public int removeStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		return storeBusinessCompanyDao.deleteStoreBusinessCompany(storeBusinessCompany);
	}
	
	public List<StoreBusinessCompany> getStoreBusinessCompany() {
		return storeBusinessCompanyDao.selectStoreBusinessCompany();
	}
	
	public int getStoreBusinessCompanyCount() {
		return storeBusinessCompanyDao.selectStoreBusinessCompanyCount();
	}
}
