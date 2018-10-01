package com.cafe.charhanjan.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe.charhanjan.dto.StoreMenu;

@Repository
public class StoreMenuDao {
	private final String NS = "com.cafe.charhanjan.mapper.storeMenuMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int insertMenu(StoreMenu storeMenu) {
        return sqlSessionTemplate.insert(NS+"insertMenu", storeMenu);
    }
	
	public int updateStoreMenu(StoreMenu storeMenu) {
		return sqlSessionTemplate.update(NS+"updateStoreMenu", storeMenu);
	}
	
	public int deleteMenu(StoreMenu storeMenu) {
		return sqlSessionTemplate.delete(NS+"deleteMenu", storeMenu);
	}
	
	public StoreMenu selectMenu(String storeSalesMenuCode) {
		return sqlSessionTemplate.selectOne(NS+"getMenu", storeSalesMenuCode);
	}
	
	public List<StoreMenu> selectStroeMenuList(Map<String, Integer> map) {
		return sqlSessionTemplate.selectList(NS+"getStoreMenu", map);
	}
	
	public int selectStoreMenuCount() {
		return sqlSessionTemplate.selectOne(NS+"getStoreMenuCount");
	}
	
}
