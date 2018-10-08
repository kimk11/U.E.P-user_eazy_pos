package com.cafe.charhanjan.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe.charhanjan.dao.RootMenuDao;
import com.cafe.charhanjan.dto.RootMenu;

@Service
@Transactional
public class RootMenuService {
	@Autowired
	private RootMenuDao rootMenuDao;
	private Map<String,Integer> map;
	
	public List<RootMenu> getRootMenuList(int currentPage, int pagePerRow) {
		int rootMenuCount = getRootMenuCount();
		int lastPage = (int)(Math.ceil((double)rootMenuCount/pagePerRow));
		map.put("beginRow", (currentPage-1)*pagePerRow);
		map.put("pagePerRow", pagePerRow);									
		map.put("rootStockCateCount", rootMenuCount);
		map.put("lastPage", lastPage);
		return rootMenuDao.selectRootMenuList(map);
	}
	
	public int getRootMenuCount() {
		return rootMenuDao.getRootMenuCount();
	}
	
	// 메뉴 추가
	public int addRootMenu(RootMenu rootMenu) {
		String check = rootMenuDao.selectMenuCheck();
		System.out.println(check+"check");
		if(check != null) {
			int codeNum = rootMenuDao.selectMenuCode()+1;
			rootMenu.setRootSalesMenuCode("goods"+codeNum);
		}else {
			rootMenu.setRootSalesMenuCode("goods1");
		}

		return rootMenuDao.insertRootMenu(rootMenu);
	}
	
	public int removeRootMenu(String rootSalesMenuCode) {
		return rootMenuDao.deleteRootMenu(rootSalesMenuCode);
	}
	
	public int modifyRootMenu(RootMenu rootMenu) {
		return rootMenuDao.updateRootMenu(rootMenu);
	}
}
