package com.dining.controller.User;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.dining.common.SuperClass;
import com.dining.model.bean.User;
import com.dining.model.dao.UserDao;
/*import com.shopping.model.bean.FillItem;
import com.shopping.model.dao.FillItemDao;*/

public class UserInsertController extends SuperClass {
	private final String PREFIX = "User/";
	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doGet(request, response);
		
		// 라디오 버튼과 체크 박스는 데이터 베이스에서 읽어 동적으로 채웁니다.
		/*
		 * FillItemDao fdao = new FillItemDao(); List<FillItem> genderList =
		 * fdao.getDataList("members", "gender"); List<FillItem> marriageList =
		 * fdao.getDataList("members", "marriage"); List<FillItem> hobbyList =
		 * fdao.getDataList("members", "hobby");
		 * 
		 * request.setAttribute("genderList", genderList);
		 * request.setAttribute("marriageList", marriageList);
		 * request.setAttribute("hobbyList", hobbyList);
		 */
		
		super.gotoPage(PREFIX + "CustomerInsertForm.jsp");
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
		bean.setBirth(request.getParameter("Birth"));
		bean.setEmail(request.getParameter("Email"));
		bean.setAddress(request.getParameter("Address"));
		bean.setAddress_Detail(request.getParameter("Address_Detail"));
		
		// 적립 포인트는 데이터 베이스 기본 값으로 대체하면 문제 없음
		
		// for checkbox control
		/*
		 * String hobby = "" ; String[] hobbies = request.getParameterValues("hobby");
		 * if(hobbies == null){ hobby = null ; // 디비에 null 값으로 채우기 }else{ for(int
		 * i=0;i<hobbies.length;i++){ hobby += hobbies[i] + "/" ; } }
		 * bean.setHobby(hobby);
		 */
		int cnt = dao.insertData(bean);
		
		if(cnt == 1){ // 인서트 성공
			// 로그인 컨트롤러의 doPost() 메소드를 호출하면 가입과 동시에 로그인하는 효과를 봅니다.
			new UserLoginController().doPost(request, response); 
			
		}else{ // 인서트 실패
			new UserInsertController().doGet(request, response); 
		}
	}
}