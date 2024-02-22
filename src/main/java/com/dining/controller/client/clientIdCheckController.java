package com.dining.controller.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.Client;
import com.dining.model.dao.ClientDao;

public class clientIdCheckController extends SuperClass{
@Override
public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
	super.doGet(request, response);
	String C_id = request.getParameter("C_id") ;
	ClientDao dao = new ClientDao() ;
	Client bean = dao.getDataBean(C_id) ;
	
	String message = "" ;// 사용자에게 보여줄 메시지
	
	if(bean == null) { // 존재하지 않는 회원
		request.setAttribute("isRegister", true); // 가입 가능
		message = C_id + "은(는) <font color='blue'><b>사용 가능</b></font>한 아이디입니다." ;
		
	}else { // 존재하는 회원
		request.setAttribute("isRegister", false);
		
		if(bean.getC_id().equals("admin")){ // 관리자				 
			message = "admin은 <font color='red'><b>사용 불가능</b></font>한 아이디입니다." ;
			
			request.setAttribute("plus_message", "<font color='blue'><b>관리자</b></font>를 위한 아이디입니다.");
			
		}else { // 일반 회원
			message = C_id + "은(는) 이미 <font color='red'><b>사용중</b></font>인 아이디입니다." ;
		}
	}
	
	request.setAttribute("message", message);
	super.gotoPage("client/idCheck.jsp"); 
}
}
