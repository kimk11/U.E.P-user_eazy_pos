// 2018. 9. 27(목) 이원상	RootStockCateService
package com.cafe.charhanjan.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe.charhanjan.dao.RootStockCateDao;
import com.cafe.charhanjan.dto.RootStockCate;

@Service			// 서비스 어노테이션 : 데이터베이스에서 데이터를 가져와 컨트롤러에게 전달해주는 클래스
@Transactional		// 트랜잭션 처리
public class RootStockCateService {
	@Autowired		// 의존성 주입
	private RootStockCateDao rootStockCateDao;
	
	public HashMap<String, Object> getRootStockCateList(int currentPage, int pagePerRow) {
	HashMap<String, Object> map = new HashMap<String,Object>();
	List<RootStockCate> list = rootStockCateDao.selectRootStockCateList(map);
	int rootStockCateCount = list.size();										// rootStockCateCount(본사재고카테고리) 총 갯수
	map.put("beginRow", (currentPage - 1) * pagePerRow);						// 첫번째 볼 행
	map.put("pagePerRow", pagePerRow);											// 페이지당 볼 행의 수
	int lastPage = (int)(Math.ceil((double)rootStockCateCount/pagePerRow));		// 본사재고카테고리 총 갯수 / 페이지당 볼 행의 수
	// rootStockCateCount/pagePerRow의 값이 소숫점일시 올림하여 대입
	map.put("rootStockCateCount", rootStockCateCount);
	map.put("lastPage", lastPage);
	map.put("list", list);
	return map;
	}
	
	public int addRootStockCate(RootStockCate rootStockCate) {
		rootStockCate.setRootStockCateCode(rootStockCateDao.selectLastRootStockCateCode());
		return rootStockCateDao.insertRootStockCate(rootStockCate);
	}

	public int removeRootStockCate(String rootStockCateCode) {
		return rootStockCateDao.deleteRootStockCate(rootStockCateCode);
	}
	
	public int modifyRootStockCate(RootStockCate rootStockCate) {
		return rootStockCateDao.updateRootStockCate(rootStockCate);
	}
	
}
