// 2018. 9. 27(목) 이원상	RootStockCateDao
package com.cafe.charhanjan.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe.charhanjan.dto.RootStockCate;

//DB 접근을 알리는 에노테이션
@Repository
public class RootStockCateDao {
	private final String  NAMESPEACE = "com.cafe.charhanjan.mapper.RootStockCateMapper.";
	// 객체 주입
    @Autowired
	private SqlSessionTemplate sqlSessionTemplate;
    
   
    public List<RootStockCate> selectRootStockCateList(){
    	List<RootStockCate> list= sqlSessionTemplate.selectList(NAMESPEACE+"selectRootStockCateList");

    	for(RootStockCate cate : list) {
    		System.out.println(cate.getRootStockCateCode());
    	}

    	
    	return list;
    }
 
}
