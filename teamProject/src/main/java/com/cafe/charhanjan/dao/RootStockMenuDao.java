// 2018. 9. 21(금) 이원상	RootStockMenuDao
package com.cafe.charhanjan.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe.charhanjan.dto.RootStockMenu;

// DB 접근을 알리는 에노테이션
@Repository
public class RootStockMenuDao {
	private final String  NAMESPEACE = "com.cafe.charhanjan.mapper.RootStockMenuMapper.";
	// 객체 주입
    @Autowired
	private SqlSessionTemplate sqlSessionTemplate;
    
    // 본사재고등록 메소드
    public int insertRootStock(RootStockMenu rootStockMenu) {
    	return sqlSessionTemplate.insert(NAMESPEACE+"insertRootStock", rootStockMenu);
    }
    
    // 본사재고삭제 메소드
    public int deleteRootStock(String rootStockCode) {
    	return sqlSessionTemplate.delete(NAMESPEACE+"deleteRootStock", rootStockCode);
    }
    
    // 본사재고수정 메소드
    public int updateRootStock(RootStockMenu rootStockMenu) {
    	return sqlSessionTemplate.update(NAMESPEACE+"updateRootStock", rootStockMenu);
    }
    
    // 본사재고전체조회 메소드
    
    public List<RootStockMenu> selectRootStock(Map<String, Integer> map){
    	return sqlSessionTemplate.selectList(NAMESPEACE+"selectRootStockCateList", map);
    }
    
    public int getRootStockCount() {
    	return sqlSessionTemplate.selectOne(NAMESPEACE+"getRootStockCount");
    }
}
