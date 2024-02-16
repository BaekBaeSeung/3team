package com.dining.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.User;
import com.dining.model.dao.UserDao;


public class UserUpdateController extends SuperClass {
	private final String PREFIX = "Customer/";
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doGet(request, response);
		
		// 현재 로그인 한 사람의 아이디(primary key) 
		
		User Userid = (User)super.session.getAttribute("loginfo");
		
		String U_id = Userid.getU_id();
		UserDao dao = new UserDao();
		User bean = dao.getDataBean(U_id) ; 
//		String U_id = request.getParameter("U_id") ;
//		
//		UserDao dao = new UserDao();
//		User bean = dao.getDataBean(U_id) ; 
		
		
		System.out.println(bean);
		request.setAttribute("bean", bean);
		
		
		super.gotoPage(PREFIX + "Customer_Update_DeleteForm.jsp");
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doPost(request, response);
		
		UserDao dao = new UserDao();
		User bean = new User();
		bean.setU_id(request.getParameter("U_id"));
		bean.setPassword(request.getParameter("Password"));
		bean.setName(request.getParameter("Name"));	
		bean.setNickname(request.getParameter("Nickname"));
		bean.setPhone(request.getParameter("Phone"));
		bean.setEmail(request.getParameter("Email"));
		bean.setAddress(request.getParameter("Address"));
		bean.setAddress_Detail(request.getParameter("Address_Detail"));
		
		int cnt = dao.updateData(bean) ;
		
		if(cnt == 1){ // 수정 성공
			super.gotoPage(PREFIX + "Customer_Update_DeleteForm.jsp"); 
			
		}else{ // 수정 실패
			super.gotoPage(PREFIX + "Customer_Update_DeleteForm.jsp"); 
		}
	}
}