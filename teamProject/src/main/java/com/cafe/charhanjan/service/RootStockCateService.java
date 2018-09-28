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
	
	public List<RootStockCate> getRootStockCateList() {

		return rootStockCateDao.selectRootStockCateList();
	}

}
