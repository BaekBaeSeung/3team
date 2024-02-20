package com.dining.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.User;
import com.dining.model.dao.ClientDao;
import com.dining.model.dao.UserDao;

public class GotoMypageController extends SuperClass{
	private final String PREFIX = "Customer/";
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		super.doGet(request, response);
//		super.youNeededLogin();
		UserDao dao = new UserDao() ;
		String U_id = request.getParameter("U_id") ;
		User bean = dao.getDataBean(U_id) ;		
		
		if(session.getAttribute("loginfo") == null) {
			//super.setAlertMessage("잘못된 회원 정보입니다.");
			super.gotoPage(PREFIX + "dining_Login_Customer.jsp");
			
		}else{
			
			request.setAttribute("bean", bean); 
			super.gotoPage(PREFIX + "Customer_Update_DeleteForm.jsp");	
		}
		
	}
}
