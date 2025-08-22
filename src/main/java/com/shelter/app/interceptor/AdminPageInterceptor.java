package com.shelter.app.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.shelter.app.member.MemberVO;
import com.shelter.app.member.RoleVO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Component
@Slf4j
public class AdminPageInterceptor implements HandlerInterceptor {
	// 주소창으로 /pet/add 혹은 /pet/update에 대해 get 요청을 보낸다면 관리자 권한인지 체크하는 interceptor
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		if (request.getMethod().equalsIgnoreCase("post")) return;
		
		HttpSession session = request.getSession(false);
		
		String url = "./list";
		if (request.getRequestURI().equals("/donation/sum")) url = "/";
		String msg = "권한이 없습니다.";
		if(session == null || session.getAttribute("member") == null) {
			modelAndView.setViewName("commons/result");
			modelAndView.addObject("url", url);
			modelAndView.addObject("msg", msg);
			
			return;
		} else {
			MemberVO memberVO = (MemberVO) session.getAttribute("member");
			boolean isAdmin = false;
			for (RoleVO r : memberVO.getRoleVOs()) {
				if (r.getAuthorId() == 2) isAdmin = true;
			}
			
			if (!isAdmin) {
				modelAndView.setViewName("commons/result");
				modelAndView.addObject("url", url);
				modelAndView.addObject("msg", msg);
				
				return;
			}
		}
		
	}
	
}
