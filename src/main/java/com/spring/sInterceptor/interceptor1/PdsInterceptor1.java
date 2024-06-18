package com.spring.sInterceptor.interceptor1;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class PdsInterceptor1 extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("(Pds)preHandle통과중...");
		HttpSession session = request.getSession();  // jsp 필터에선 이렇게 못했음
		int level = session.getAttribute("sLevel")==null ? 99 :  (int) session.getAttribute("sLevel");
		
		if(request.getRequestURI().matches("pds/pdsList")) {
			if(level > 2) {  // 99번인 경우만 못들어감
				RequestDispatcher dispatcher = request.getRequestDispatcher("/message/loginGuest");  // 빠꾸 forward처리
				dispatcher.forward(request, response);
				return false;
			}
			else return true;
		}
		else if(request.getRequestURI().matches("pds/pdsInput")) {
			if(level == 2) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/message/levelLow");
				dispatcher.forward(request, response);
				return false;
			}
			else return true;
		}
		
		return super.preHandle(request, response, handler);
	}
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("(Pds)postHandle통과중...");
		
		super.postHandle(request, response, handler, modelAndView);
	}
	
}
