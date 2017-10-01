package cn.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.pojo.WebUser;

public class SysInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		if (request.getSession().getAttribute("webuser")!= null) {
			return true;
		} else {
			response.sendRedirect(request.getContextPath() + "/403.jsp");
			return false;
		}
	}

}
