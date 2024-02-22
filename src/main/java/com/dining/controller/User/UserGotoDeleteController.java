package com.dining.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;

public class UserGotoDeleteController extends SuperClass {
	private final String PREFIX = "Customer/";
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		super.doGet(request, response);

		String U_id = request.getParameter("U_id");

		request.setAttribute("U_id", U_id);
		
		super.gotoPage(PREFIX + "customerDelete.jsp");

	}

}
