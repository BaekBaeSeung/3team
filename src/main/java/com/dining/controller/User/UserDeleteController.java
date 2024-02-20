package com.dining.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.dao.UserDao;

public class UserDeleteController extends SuperClass{
	 private final String PREFIX = "mainpage/";
	 
	@Override 	// 특정 회원이 탈퇴할 때 사용하는 컨트롤러입니다.
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doGet(request, response);
		
		String U_id = request.getParameter("U_id") ;
		UserDao dao = new UserDao() ;
		int cnt = -1 ;
		cnt = dao.deleteData(U_id) ;
		
		// 세션 공간에 들어 있는 모든 정보를 무효화시킵니다.
		super.session.invalidate();
					/*메인 페이지로 보내야함.*/
		//new MemberInsertController().doGet(request, response);
		super.gotoPage(PREFIX + "main.jsp");
	}
}
