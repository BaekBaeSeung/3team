package com.shopping.controller.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;

public class ReviewListController extends SuperClass {
	private final String PREFIX = "Review/" ;
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		super.doGet(request, response);
		super.gotoPage(PREFIX + "reList.jsp");
		
	}
	

}
