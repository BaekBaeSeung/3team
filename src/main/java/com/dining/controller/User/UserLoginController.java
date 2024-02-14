package com.dining.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
/*import com.dining.controller.product.ProductListController;*/
import com.dining.model.bean.User;
import com.dining.model.dao.UserDao;

public class UserLoginController extends SuperClass {
	private final String PREFIX = "user/";
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("로그인 페이지로 이동합니다.");
		super.doGet(request, response);		
		super.gotoPage(PREFIX + "meLoginForm.jsp");
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doPost(request, response);
		
		String id = request.getParameter("id") ;
		System.out.println(id);
		String password = request.getParameter("password") ;
		System.out.println(id + "/" + password);
		
		UserDao dao = new UserDao();
		User bean = dao.getDataByIdAndPassword(id, password);
		
		if(bean == null) { // 로그인 실패
			String message = "로그인 정보가 잘못되었습니다.";
			super.setAlertMessage(message) ;
			super.gotoPage(PREFIX + "meLoginForm.jsp");
			
		}else { // 로그인 성공
			// session 영역(scope)에 나의 로그인 정보를 저장(바인딩)합니다.
			// loginfo 속성을 사용하여 현재 로그인 상태를 확인할 수 있습니다. 
			super.session.setAttribute("loginfo", bean) ;
			
			// 로그인 성공 이후 상품 목록 페이지로 이동합니다.
			/*여기에 로그인 성공시 어디로 갈건지 아마 메인페이지로 가도록 해야 할 듯.*/
			//new ProductListController().doGet(request, response) ;
		}
	}
}