package com.dining.controller.client;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
/*import com.dining.controller.product.ProductListController;*/
import com.dining.model.bean.Client;
import com.dining.model.dao.ClientDao;


public class ClientLoginController extends SuperClass {
	private final String PREFIX = "client/";
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("로그인 페이지로 이동합니다.");
		super.doGet(request, response);
		super.gotoPage(PREFIX + "dining_login_client.jsp");
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doPost(request, response);
		
		String C_id = request.getParameter("C_id") ;
		String Password = request.getParameter("Password") ;
		System.out.println(C_id + "/" + Password);
		
		ClientDao dao = new ClientDao();
		Client bean = dao.getDataByIdAndPassword(C_id, Password);
		
		if(bean == null) { // 로그인 실패
			String message = "로그인 정보가 잘못되었습니다.";
			super.setAlertMessage(message) ;
			super.gotoPage(PREFIX + "dining_login_client.jsp");
			
		}else { // 로그인 성공
			// session 영역(scope)에 나의 로그인 정보를 저장(바인딩)합니다.
			// loginfo 속성을 사용하여 현재 로그인 상태를 확인할 수 있습니다. 
			super.session.setAttribute("loginfo", bean) ;
			
			// 로그인 성공 이후 상품 목록 페이지로 이동합니다.
			/*여기에 로그인 성공시 어디로 갈건지 아마 메인페이지로 가도록 해야 할 듯.*/
			//new ProductListController().doGet(request, response) ;
			
			/*========================= 메인페이지로 이동하게.... ====================================*/
			super.gotoPage(PREFIX + "clientInsertForm.jsp");
		}
	}
}