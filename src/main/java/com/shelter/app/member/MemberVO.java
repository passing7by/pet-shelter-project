package com.shelter.app.member;

import java.util.List;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	private Long memberId;
	
	@NotBlank(message = "ID를 입력해 주세요.", groups = {LoginGroup.class, JoinGroup.class})
	private String username;
	
	@NotBlank(message = "비밀번호를 입력해 주세요.", groups = {LoginGroup.class, JoinGroup.class})
	private String password;
	
	private String passwordCheck;
	
	@NotBlank(message = "이름을 입력해 주세요.", groups = {JoinGroup.class})
	private String name;
	
	private Character gender;
	private Integer age;
	private String email;
	
	@NotBlank(message = "전화번호를 입력해 주세요.", groups = {JoinGroup.class})
//	@Pattern(regexp = "^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$\r\n")
	private String phone;
	
	private boolean hasPet;
	private boolean accountNonExpired;
	
	private List<RoleVO> roleVOs;
}
