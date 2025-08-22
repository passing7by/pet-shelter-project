package com.shelter.app.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;


@Service
@Transactional
public class MemberService {
	@Autowired
	private MemberDAO memberDAO;
	
	// 검증 메서드
	public boolean hasMemberError(MemberVO memberVO, BindingResult bindingResult) throws Exception {
		boolean hasError = true;
		
		// hasError값이 true면 검증 실패
		// hasError값이 false면 검증 통과
		
		// 1. Annotation 검증
		hasError = bindingResult.hasErrors();
		
		// 2. 사용자 정의로 패스워드가 일치하는지 검증   
//		if(!memberVO.getPassword().equals(memberVO.getPasswordCheck())) {
//			bindingResult.rejectValue("passwordCheck", "member.password.notEqual");
//		}
		
		// 3. ID 중복 검사
//		if(memberDAO.checkUsername(memberVO) != null) {
//			checkFalse = true;
//			bindingResult.rejectValue("username", "member.username.duplicate");
//		}
		
		return hasError;
	}
	
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
