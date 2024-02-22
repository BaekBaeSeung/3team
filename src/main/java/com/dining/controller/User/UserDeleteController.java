package com.dining.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.dao.UserDao;

public class UserDeleteController extends SuperClass{
	private final String PREFIX = "Customer/";
	
	@Override 	// 특정 회원이 탈퇴할 때 사용하는 컨트롤러입니다.
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		super.doGet(request, response);
		
		String U_id = request.getParameter("U_id") ;
		
		request.setAttribute("U_id", U_id) ;
		
		new UserGotoDeleteController().doGet(request, response); 
	}
}
