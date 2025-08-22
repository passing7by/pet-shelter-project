package com.shelter.app.member;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	public MemberVO login(MemberVO memberVO) throws Exception;
	public int insertMember(MemberVO memberVO) throws Exception;
	public int insertRole(RoleVO roleVO) throws Exception;
	public int updateMember(MemberVO memberVO) throws Exception;
	public MemberVO selectMember(MemberVO memberVO) throws Exception;
	public int deleteMember(MemberVO memberVO) throws Exception;
	public MemberVO checkUsername(MemberVO memberVO) throws Exception;
}
