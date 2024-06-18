package com.spring.sInterceptor.interceptor1;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

// 게시판을 가져오기 위한 인터셉트
public class BoardInterceptor1 extends HandlerInterceptorAdapter {  // 상속받으면 interceptor로서의 역할을 하게됨  // 부모가 추상클래스(일반x)=>부모도 implement함. 부모 위 인터페이스O => 부모 클래스 아래 메소드가 있지만 다 받아서 사용 안해도 됨
	// 거의 인증에 관한 업무이므로, preHandle으로 서블릿(controller 안에) 들어가기 전에 거르자
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		System.out.println("preHandle 통과중...");
		
		HttpSession session = request.getSession();  // jsp 필터에선 이렇게 못했음
		int level = session.getAttribute("sLevel")==null ? 99 :  (int) session.getAttribute("sLevel");  // request로 가져오는 것은 null값 처리해야해, 안그럼 오류남
		
		if(request.getRequestURI().matches("board/boardList")) {
			if(level > 3) {  // 99번인 경우만 못들어감
				RequestDispatcher dispatcher = request.getRequestDispatcher("/message/loginGuest");  // 빠꾸 forward처리
				dispatcher.forward(request, response);
				return false;
			}
			else return true;
		}
		else if(request.getRequestURI().matches("board/boardInput")) {
			if(level == 3) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/message/levelLow");
				dispatcher.forward(request, response);
				return false;
			}
			else return true;
		}
		
		//return super.preHandle(request, response, handler);
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		System.out.println("preHandle 통과중...");		

		super.postHandle(request, response, handler, modelAndView);
	}
}
