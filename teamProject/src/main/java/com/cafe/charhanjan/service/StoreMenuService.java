package com.cafe.charhanjan.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe.charhanjan.dao.StoreMenuDao;
import com.cafe.charhanjan.dto.StoreMenu;

@Service
@Transactional
public class StoreMenuService {
	
	@Autowired
	private StoreMenuDao storeMenuDao;
	
	public int addStoreMenu(StoreMenu storeMenu) {
		
		return storeMenuDao.insertMenu(storeMenu);
	}
	
	public int modifyStoreMenu(StoreMenu storeMenu) {
		return storeMenuDao.updateStoreMenu(storeMenu);
	}
	
	public int removeStoreMenu(String storeSalesMenuCode) {
		StoreMenu storeMenu = new StoreMenu();
		storeMenu.setStoreSalesMenuCode(storeSalesMenuCode);
		return storeMenuDao.deleteMenu(storeMenu);
	}
	
	public StoreMenu getStoreMenu(String storeSalesMenuCode) {
		return storeMenuDao.selectMenu(storeSalesMenuCode);
	}
	
	public List<StoreMenu> getStoreMenuList(int currentPage, int pagePerRow) {
        Map<String, Integer> map = new HashMap<String, Integer>();
        map.put("beginRow", (currentPage-1)*pagePerRow);
        map.put("pagePerRow", pagePerRow);
        return storeMenuDao.selectStroeMenuList(map);
    }
	
	public int getStoreMenuCount() {
		return storeMenuDao.selectStoreMenuCount();
	}
	
}
