package com.dining.controller.reservation;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.Dining;
import com.dining.model.dao.DiningDao;
import com.dining.model.dao.ReservationDao;


public class reservationListController extends SuperClass{
	private final String PREFIX = "reservation/";
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		super.doPost(request, response);
		
		

		super.gotoPage(PREFIX + "reservationhistory.jsp");
	}
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		super.doGet(request, response);
		
		DiningDao dao = new DiningDao();
		List<Dining> diningList = dao.getDiningList();
		
		request.setAttribute("dataList", dataList);
		super.gotoPage(PREFIX + "boList.jsp");
		ReservationDao Rdao = new ReservationDao();
	}

}
