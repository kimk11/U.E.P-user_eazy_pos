/* 2018.09.27 송유빈 StoreBusinessCompany */
package com.cafe.charhanjan.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.cafe.charhanjan.dto.StoreBusinessCompany;

@Repository
public class StoreBusinessCompanyDao {
	private final String NAMESPACE = "com.cafe.charhanjan.mapper.StoreBusinessCompanyMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;	// SqlSessionTemplate 클래스에는 setter가 없어서 생성자로 주입
	
	// 거래처 등록
	public int insertStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		return sqlSessionTemplate.insert(NAMESPACE+"insertStoreBusinessCompany",storeBusinessCompany);
	}
	
	// 거래처 정보수정
	public int updateStoreBusinessCompany(StoreBusinessCompany storeBusinessCompany) {
		return sqlSessionTemplate.update(NAMESPACE+"updateStoreBusinessCompany",storeBusinessCompany);
	}
	
	// 거래처 삭제
	public int deleteStoreBusinessCompany(String storeBusinessCompanyCode) {
		return sqlSessionTemplate.delete(NAMESPACE+"deleteStoreBusinessCompany",storeBusinessCompanyCode);
	}
	
	// 거래처  조회
	public List<StoreBusinessCompany> selectStoreBusinessCompanyList(HashMap<String, Integer> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"selectStoreBusinessCompanyList",map);
	}
	
	// 페이징을 위한 총 거래처 수
	public int getStoreBusinessCompanyCount() {
        return sqlSessionTemplate.selectOne(NAMESPACE+"getStoreBusinessCompanyCount");
    }
	
	// 거래처 코드 
	public String getStoreBusinessCompanyCode() {
		return sqlSessionTemplate.selectOne(NAMESPACE+"getStoreBusinessCompanyCode");
	}
	
}
