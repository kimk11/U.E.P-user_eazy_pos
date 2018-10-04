package com.cafe.charhanjan.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe.charhanjan.dto.RootMenuCate;
import com.cafe.charhanjan.dto.StoreMenu;

@Repository
public class StoreMenuDao {
	private final String NS = "com.cafe.charhanjan.mapper.StoreMenuMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int insertMenu(StoreMenu storeMenu) {
        return sqlSessionTemplate.insert(NS+"allMenuInsert", storeMenu);
    }
	
	public int updateStoreMenu(StoreMenu storeMenu) {
		return sqlSessionTemplate.update(NS+"updateStoreMenu", storeMenu);
	}
	
	public int deleteMenu(StoreMenu storeMenu) {
		return sqlSessionTemplate.delete(NS+"deleteMenu", storeMenu);
	}
	
	public StoreMenu selectMenu(String storeSalesMenuCode) {
		return sqlSessionTemplate.selectOne(NS+"menuSelect", storeSalesMenuCode);
	}
	
	public List<StoreMenu> selectStroeMenuList(Map<String, Integer> map) {
		return sqlSessionTemplate.selectList(NS+"allMenuList", map);
	}
	
	public int selectStoreMenuCount() {
		return sqlSessionTemplate.selectOne(NS+"allMenuCountGet");
	}
	
	public List<RootMenuCate> selectRootMenuCate() {
		return sqlSessionTemplate.selectList(NS+"rootCateList");
	}
	
}
