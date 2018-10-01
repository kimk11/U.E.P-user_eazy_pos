package com.cafe.charhanjan.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe.charhanjan.dto.RootMenu;

@Repository
public class RootMenuDao {
	private final String NAMESPACE = "com.cafe.charhanjan.mapper.RootMenuMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int insertRootMenu(RootMenu rootMenu) {
		return sqlSessionTemplate.insert(NAMESPACE+"insertRootMenuDao", rootMenu);
	}
	
	public List<RootMenu> selectRootMenuList(Map<String, Integer> map) {
		return sqlSessionTemplate.selectList(NAMESPACE+"selectRootMenuList", map);
	}
	
	public int getRootMenuCount() {
		return sqlSessionTemplate.selectOne(NAMESPACE+"getRootMenuCount");
	}
	
	public int updateRootMenu(RootMenu rootMenu) {
		return sqlSessionTemplate.update(NAMESPACE+"updateRootMenu", rootMenu);
	}
	
	public int deleteRootMenu(String rootSalesMenuCode) {
		return sqlSessionTemplate.delete(NAMESPACE+"deleteRootMenu", rootSalesMenuCode);
	}
}
