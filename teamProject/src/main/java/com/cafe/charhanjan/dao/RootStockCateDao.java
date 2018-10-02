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
    @Autowired private SqlSessionTemplate sqlSessionTemplate;
    
    // 메소드 설명
    // 메소드 용도 : 본사 재고 카테고리 등록 메소드
    // 매개변수 : RootStockCate 클래스의 인스턴스 참조값
    // 리턴 : 입력된 행의 갯수
    public int insertRootStockCate(RootStockCate rootStockCate) {
		return sqlSessionTemplate.insert(NAMESPEACE+"insertRootStockCate", rootStockCate);
    }
    
    public List<RootStockCate> selectRootStockCateList(HashMap<String, Object> map){
    	return sqlSessionTemplate.selectList(NAMESPEACE+"selectRootStockCateList");
    }
    
    public int updateRootStockCate(RootStockCate rootStockCate) {
    	return sqlSessionTemplate.update(NAMESPEACE+"updateRootStockCate", rootStockCate);
    }
    
    public int deleteRootStockCate(String rootStockCateCode) {
    	return sqlSessionTemplate.delete(NAMESPEACE+"deleteRootStockCate", rootStockCateCode);
    }
}
