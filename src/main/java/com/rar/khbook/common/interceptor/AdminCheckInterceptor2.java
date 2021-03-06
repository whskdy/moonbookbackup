package com.rar.khbook.common.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.rar.khbook.member.model.vo.Member;

public class AdminCheckInterceptor2  implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object handler) throws Exception{
		HttpSession session=request.getSession();
		Member loginMember=(Member)session.getAttribute("loginMember");
		if(loginMember != null && (loginMember.getMemberId()).equals("admin")) {
			return true;
		}else {
			request.setAttribute("msg","관리자만 사용 가능합니다.");
			request.getRequestDispatcher("/WEB-INF/views/servicecenter/msgOpen.jsp").forward(request, response);
			return false;
		}
	}
	
}
