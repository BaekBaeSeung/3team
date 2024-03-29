package com.dining.controller.client;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;

public class ClientLogoutController extends SuperClass{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doGet(request, response);		
		
		if(super.clientinfo != null) { // 누군가가 로그인 한 경우
			System.out.println("로그인");
			// 로그인시 바인딩하였던 로그인 정보를 깨끗이 지웁니다.
			super.session.invalidate(); // 세션 데이터들을 무효화
			super.gotoPage("mainpage/main.jsp"); //메인 페이지로 다시 이동
			
		}else { // 미로그인 상태
			//super.youNeededLogin();
			System.out.println("미로그인");
			super.gotoPage("mainpage/main.jsp");						
			return ;
		}

	}
	

}
