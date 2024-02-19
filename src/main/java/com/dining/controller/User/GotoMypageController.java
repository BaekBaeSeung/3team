package com.dining.controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;

public class GotoMypageController extends SuperClass{
	private final String PREFIX = "Customer/";
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		super.doGet(request, response);
		
		super.gotoPage(PREFIX + "Customer_Update_DeleteForm.jsp");
	}
}
