package com.dining.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.dao.UserDao;

public class UserDeleteDetailController extends SuperClass{
	private final String PREFIX = "mainpage/";
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doGet(request, response);		
				
		String U_id = request.getParameter("U_id") ;
		System.out.println(request.getParameter("U_id"));
		UserDao dao = new UserDao() ;
		int cnt = -1 ;
		
		cnt = dao.deleteData(U_id) ;
		System.out.println("여기가 deleteData로 삭제 시키는 곳 UserDeleteDetailController : "+cnt);
		// 세션 공간에 들어 있는 모든 정보를 무효화시킵니다.
		
		
		if(cnt == -1) { // 삭제 실패
			String message = "삭제가 실패하였습니다.";
			super.setAlertMessage(message) ;
			super.gotoPage(PREFIX + "main.jsp");
			
		}else { // 삭제 성공
			super.session.invalidate();
			
			super.gotoPage(PREFIX + "main.jsp");						
		}		

	}
}

	
