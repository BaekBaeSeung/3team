package com.dining.common;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dining.model.bean.Client;
import com.dining.model.bean.User;

// 하위 컨트롤러들이 공통적으로 사용하는 기능들을 여기에 명시하도록 합니다. 
public class SuperClass implements SuperController {
	private HttpServletRequest request ; 
	private HttpServletResponse response ;
	
	// 세션 객체로써 하위 컨트롤러들이 참조 가능합니다.
	protected HttpSession session ;
	
	// 로그인 여부를 파악하는 변수
	protected User loginfo = null ;
	protected Client clientinfo = null ;
	

	public String getUrlInformation(String todoCommand) {
		// todoCommand : todolist.txt 파일에 명시된 커맨드 이름
		// 커맨드 이름을 사용하여 웹 주소 형식의 FullName을 반환해 줍니다.
		String appName = this.request.getContextPath() ; // in file common.jsp
		String mappingName = "/dining" ; // url Pattern in file FrontController.java 
		
		String fullAddress = appName + mappingName + "?command=" + todoCommand ;
		System.out.println("요청 url 전체 경로명 :\n" + fullAddress); 
		return fullAddress;
	}	
	

	public void youNeededLogin() {
		// 미로그인시 적절한 메시지를 보여 주고, 로그인 페이지로 이동합니다.
		
		
			//로그인 셀렉트로 이동하게...
		this.gotoPage("Dining/Customer/dining_login_select.jsp");
	}	
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		this.request = request ;
		this.response = response ;
		this.session = request.getSession() ;		
		this.loginfo = (User)session.getAttribute("loginfo");		
		this.clientinfo = (Client)this.session.getAttribute("clientinfo");	
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		this.request = request ;
		this.response = response ;
		this.session = request.getSession() ;
		this.loginfo = (User)session.getAttribute("loginfo");
		this.clientinfo = (Client)this.session.getAttribute("clientinfo");
	}	
	

	public void setAlertMessage(String message) {
		// session 영역에서 "alertMessage"라는 이름으로 사용자에게 주의/오류/경고 문구 등을 띄워줍니다.
		// in common.jsp 파일 하단 참조
		session.setAttribute("alertMessage", message); 
	}	
	
	public void gotoPage(String gotoPage) {
		// 요청한 페이지 gotoPage으로 이동합니다.
		if(this.request == null) {
			System.out.println("doGet/doPost() 메소드 호출 누락");
			return ;
		}
		
		// 요청한 페이지로 포워딩합니다.
		RequestDispatcher dispatcher = null ;
		try {
			dispatcher = request.getRequestDispatcher(gotoPage) ;
			dispatcher.forward(request, response) ;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
