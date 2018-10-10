package com.cafe.charhanjan.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cafe.charhanjan.dto.RootAdminMember;
import com.cafe.charhanjan.dto.StoreBusinessCompany;

@Repository
public class RootAdminMemberDao {
	private final String NAMESPACE ="com.cafe.charhanjan.mapper.RootAdminMemberMapper.";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;	// SqlSessionTemplate 클래스에는 setter가 없어서 생성자로 주입
	
	// 관리자 등록(최고관리자가 등록)
	public int insertRootAdminMember(RootAdminMember rootAdminMember) {
		return sqlSessionTemplate.insert(NAMESPACE+"insertRootAdminMember",rootAdminMember);
		
	}
	
	// 관리자 탈퇴  
	public int deleteRootAdminMember(RootAdminMember rootAdminMember) {
		return sqlSessionTemplate.delete(NAMESPACE+"deleteRootAdminMember", rootAdminMember);
		
	}
	
	// 관리자 개인의 정보 수정
	public int updateRootAdminMember(RootAdminMember rootAdminMember) {
		return sqlSessionTemplate.update(NAMESPACE+"updateRootAdminMember",rootAdminMember);
		
	}
	
	// 관리자 개인의 정보 조회
	public List<RootAdminMember> selectOneRootAdminMember(){
		return sqlSessionTemplate.selectOne(NAMESPACE +"selectOneRootAdminMember");
	}
	
	// 최고 관리자만 열람 가능한 관리자 목록 
	public List<RootAdminMember> selectAllRootAdminMemberList(HashMap<String, Integer> map) {
		return sqlSessionTemplate.selectList(NAMESPACE,"selectAllRootAdminMember");
	}
}
