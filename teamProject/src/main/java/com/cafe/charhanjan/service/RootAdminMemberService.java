package com.cafe.charhanjan.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe.charhanjan.dao.RootAdminMemberDao;
import com.cafe.charhanjan.dto.RootAdminMember;
import com.cafe.charhanjan.dto.StoreBusinessCompany;

@Service
@Transactional
public class RootAdminMemberService {
	@Autowired
	private RootAdminMemberDao rootAdminMemberDao;
	
	// 관리자 등록(최고관리자가 등록)
	public int addRootAdminMember(RootAdminMember rootAdminMember) {
		return rootAdminMemberDao.insertRootAdminMember(rootAdminMember);
	}
	
	// 관리자 탈퇴(삭제) : 로그인 된 id를 받아와서 pw 일치하면 탈퇴 완료 
	public int removeRootAdminMember(RootAdminMember rootAdminMember) {
		return rootAdminMemberDao.deleteRootAdminMember(rootAdminMember);
	}
	
	//관리자 정보 수정(본인만) : 아이디 일치하면 정보 수정 가능
	public int modifyRootAdminMember(RootAdminMember rootAdminMember) {
		return rootAdminMemberDao.updateRootAdminMember(rootAdminMember);
	}
	
	// 관리자 1명의 정보 조회 후 로그인  
	public List<RootAdminMember> getOneRootAdminMember() {
		return rootAdminMemberDao.selectOneRootAdminMember();
		
	}
	
	//	최고 관리자만 열람 가능한 관리자 목록
	public List<RootAdminMember> getAllRootAdminMemberList(int currentPage, int pagePerRow) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("startRow", (currentPage-1)*pagePerRow);				
		map.put("pagePerRow", pagePerRow);			
		return rootAdminMemberDao.selectAllRootAdminMemberList(map);
	
	}

}
