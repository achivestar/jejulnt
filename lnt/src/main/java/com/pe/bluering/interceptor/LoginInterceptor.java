package com.pe.bluering.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.pe.bluering.vo.memberVO;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		memberVO member = (memberVO) session.getAttribute("member");
		
		if(member==null) {
			response.sendRedirect("/");
			return false;
		}
		
		return true;
	}

}
