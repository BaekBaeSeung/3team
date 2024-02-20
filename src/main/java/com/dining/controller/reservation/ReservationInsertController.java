package com.dining.controller.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.Dining;
import com.dining.model.bean.Reservation;
import com.dining.model.dao.DiningDao;
import com.dining.model.dao.ReservationDao;

public class ReservationInsertController extends SuperClass {
	private final String PREFIX = "reservation/";

	@Override //리뷰 디테일에 식당정보 빈 불러오는 곳....
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doGet(request, response);
		

		DiningDao dao = new DiningDao();
		
		int D_no = Integer.parseInt(request.getParameter("D_no"));
		System.out.println(D_no);
		Dining bean = dao.getDataBean(D_no);// 다오에서 가져오는거다

		request.setAttribute("bean", bean); // jsp 뿌리기위해서 바인딩하는거다
		
		super.gotoPage("reservation/relist.jsp");

	}

	@Override //리뷰 디테일에 식당 예약 부분 DB에 인서트 하기 위해서 파라미터 받아오는 곳...
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doPost(request, response);

		ReservationDao dao = new ReservationDao();
		Reservation bean = new Reservation();

		bean.setU_id(request.getParameter("U_id"));
		bean.setC_id(request.getParameter("C_id"));
		bean.setReservation_Date(request.getParameter("Reservation_Date"));
		bean.setR_Capacity(Integer.parseInt(request.getParameter("R_Capacity")));

		int cnt = dao.insertData(bean);

		if (cnt == 1) { // 인서트 성공
			// 로그인 컨트롤러의 doPost() 메소드를 호출하면 가입과 동시에 로그인하는 효과를 봅니다.

			super.gotoPage(PREFIX + "reservationhistory.jsp");

		} else { // 인서트 실패
			super.gotoPage(PREFIX + "relist.jsp");
		}
	}
}