package com.shelter.app.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO login(MemberVO memberVO) throws Exception {
		return memberDAO.login(memberVO);
	}
	
	public int join(MemberVO memberVO) throws Exception {
		int result = memberDAO.insertMember(memberVO);
		
		if(result > 0) {
			RoleVO roleVO = new RoleVO();
			roleVO.setMemberId(memberVO.getMemberId());
			roleVO.setAuthorId(1); // 처음 회원가입시에는 모두 회원권한으로, 나중에 권한 변경은 관리자가
			result = memberDAO.insertRole(roleVO);
		}
		
		return result;
	}
	
	public int update(MemberVO memberVO) throws Exception {
		return memberDAO.updateMember(memberVO);
	}
	
	public int delete(MemberVO memberVO) throws Exception {
		return memberDAO.deleteMember(memberVO);
	}
}
