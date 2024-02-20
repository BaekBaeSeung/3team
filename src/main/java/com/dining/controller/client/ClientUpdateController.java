package com.dining.controller.client;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.Client;
import com.dining.model.dao.ClientDao;


public class ClientUpdateController extends SuperClass {
	private final String PREFIX = "client/";
	private final String PREFIX01 = "main/";

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doGet(request, response);

		// 현재 로그인 한 사람의 아이디(primary key)
		String C_id = request.getParameter("C_id");
		
		ClientDao dao = new ClientDao();
		Client bean = dao.getDataBean(C_id);
		
		System.out.println(bean);
		
		request.setAttribute("bean", bean);

		super.gotoPage(PREFIX + "clientMyPage.jsp");
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doPost(request, response);
		
		ClientDao dao = new ClientDao();
		Client bean = new Client();
	
		bean.setPassword(request.getParameter("Password"));
		bean.setName(request.getParameter("Name"));
		bean.setGender(request.getParameter("Gender"));
		bean.setEmail(request.getParameter("Email"));
		bean.setBirthday(request.getParameter("Birthday"));
		bean.setTelephone(request.getParameter("Telephone"));
		bean.setC_id(request.getParameter("C_id"));
		
		int cnt = -1;
		
		cnt = dao.updateData(bean) ;
		
		if(cnt == 1){ // 수정 성공
			System.out.println("수정성공...");
			new ClientInsertController().doGet(request, response);
			
		}else{ // 수정 실패
			new ClientUpdateController().doGet(request, response); 
		}
	}
}
