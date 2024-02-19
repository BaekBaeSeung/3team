package com.dining.controller.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.Reservation;
import com.dining.model.dao.ReservationDao;

public class ReservationInsertController extends SuperClass {
	private final String PREFIX = "reservation/";
	
	
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
		
		super.gotoPage(PREFIX + "dining_login_select.jsp");
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doPost(request, response);
		
		ReservationDao dao = new ReservationDao();
		Reservation bean = new Reservation();
		
		bean.setU_id(request.getParameter("U_id"));
		bean.setC_id(request.getParameter("C_id"));	
		bean.setReservation_Date(request.getParameter("Reservation_Date"));
		bean.setR_Capacity(Integer.parseInt(request.getParameter("R_Capacity")));
		
		
		int cnt = dao.insertData(bean);
		
		if(cnt == 1){ // 인서트 성공
			// 로그인 컨트롤러의 doPost() 메소드를 호출하면 가입과 동시에 로그인하는 효과를 봅니다.

			super.gotoPage(PREFIX + "reservationhistory.jsp");
			
		}else{ // 인서트 실패
			super.gotoPage(PREFIX + "relist.jsp");
		}
	}
}