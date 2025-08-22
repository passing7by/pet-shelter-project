package com.shelter.app.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shelter.app.pet.PetVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping(value = "/member/*")
@Slf4j
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("login")
	public String login() throws Exception {
		return "member/login";
	}
	
	@PostMapping("login")
	public String login(@Validated(LoginGroup.class) MemberVO memberVO, BindingResult bindingResult, Model model, HttpSession session, HttpServletRequest req) throws Exception {
		// 유효성 검증
		boolean hasError = memberService.hasMemberError(memberVO, bindingResult);
		
		if(hasError) {
			System.out.println(bindingResult);
			model.addAttribute("memberVO", memberVO);
			
			return "member/login";
		}
		
		// 비밀번호 암호화
		memberVO.setPassword(req.getParameter("password"));
		System.out.println("[MemberController] login - memberVO" + memberVO);
		
		memberVO = memberService.login(memberVO);
		log.info("[login] 데이터 조회 결과: {}", memberVO);
		
		String msg = "존재하는 회원이 아닙니다.";
		String url = "./login";
		if (memberVO == null) {
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);
			return "common/result";
		}
		
		session.setAttribute("member", memberVO);
		
		return "redirect:/";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		
		return "redirect:/";
	}
	
	@GetMapping("join")
	public String join() throws Exception {
		return "member/join";
	}
	
	@PostMapping("join")
	public String join(@Validated MemberVO memberVO, BindingResult bindingResult, Model model, HttpServletRequest req) throws Exception {
		// 유효성 검증
		boolean hasError = memberService.hasMemberError(memberVO, bindingResult);
		
		if(hasError) {
			System.out.println(bindingResult);
			model.addAttribute("memberVO", memberVO);
			
			return "member/join";
		}
		
		// 비밀번호 암호화
		memberVO.setPassword(req.getParameter("password"));
		
		int result = memberService.join(memberVO);
		
		String msg = "회원가입 중 문제가 발생했습니다. 다시 시도해주세요.";
		String url = "./join";
		if (result > 0) {
			msg = "회원가입이 완료되었습니다.";
			url = "/";
		} 
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);

		return "common/result";
	}
	
	@GetMapping("detail")
	public String detail() throws Exception {
		return "member/detail";
	}
	
	@GetMapping("update")
	public String update(HttpSession session, Model model) throws Exception {
		model.addAttribute("memberVO", session.getAttribute("member"));
		
		return "member/update";
	}
	
	@PostMapping("update")
	public String upate(@Valid MemberVO memberVO, Model model, HttpSession session) throws Exception {
		// 서비스 호출
		int result = memberService.update(memberVO);
		
		String msg = "회원정보수정 중 문제가 발생했습니다. 다시 시도해주세요.";
		String url = "./update";
		if (result > 0) {
			msg = "회원정보수정이 완료되었습니다.";
			url = "./detail";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		session.setAttribute("member", memberService.login(memberVO));

		return "common/result";
	}
	
	@PostMapping("delete")
	public String delete(HttpSession session, Model model) throws Exception {
		// 서비스 호출
		int result = memberService.delete((MemberVO)session.getAttribute("member"));
		
		String msg = "회원탈퇴 중 문제가 발생했습니다. 다시 시도해주세요.";
		String url = "./detail";
		if (result > 0) {
			msg = "회원탈퇴가 완료되었습니다.";
			url = "/";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);
		
		session.invalidate();

		return "common/result";
	}
}
