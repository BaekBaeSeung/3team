package com.dining.controller.reservation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.dao.ReservationDao;


public class ReservationHistoryDeleteController extends SuperClass{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		super.doGet(request, response);
		int Reservation_no = Integer.parseInt(request.getParameter("Reservation_no"));
		
		ReservationDao dao = new ReservationDao();
		int cnt = -1;
		cnt = dao.deleteData(Reservation_no);
		
		super.gotoPage("mainpage/main.jsp");
		
		
	}

}
