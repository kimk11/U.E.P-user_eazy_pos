// 2018. 9. 21(금) 이원상
package com.cafe.charhanjan.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe.charhanjan.dao.RootStockMenuDao;
import com.cafe.charhanjan.dto.RootStockMenu;

@Service			// 서비스 어노테이션 : 데이터베이스에서 데이터를 가져와 컨트롤러에게 전달해주는 클래스
@Transactional		// 트랜잭션 처리
public class RootStockMenuService {
	@Autowired		// 의존성 주입
	private RootStockMenuDao rootStockMenuDao;
	private Map<String,Integer> map;
	
	public int addRootStock(RootStockMenu rootStockMenu) {
		return rootStockMenuDao.insertRootStock(rootStockMenu);
	}
	
	public int getRootStockCount() {
		return rootStockMenuDao.getRootStockCount();
	}
	
	public List<RootStockMenu> getRootStockList(int currentPage, int pagePerRow) {
		int rootStockCount = getRootStockCount();								// 본사 총 목록 갯수
		int lastPage = (int)(Math.ceil((double)rootStockCount/pagePerRow));		// 본사재고 총 갯수 / 페이지당 볼 행의 수
		// rootStockCateCount/pagePerRow의 값이 소숫점일시 올림하여 대입
		map.put("beginRow", (currentPage-1)*pagePerRow);				
		map.put("pagePerRow", pagePerRow);									
		map.put("rootStockCount", rootStockCount);
		map.put("lastPage", lastPage);
		return rootStockMenuDao.selectRootStock(map);
	}
	
	public int removeRootStock(String rootStockCode) {
		return rootStockMenuDao.deleteRootStock(rootStockCode);
	}
	
	public int modifyRootStock(RootStockMenu rootStockMenu) {
		return rootStockMenuDao.updateRootStock(rootStockMenu);
	}
}
