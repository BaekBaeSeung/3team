//package com.dining.controller.dining;
//
//import java.util.List;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.dining.common.SuperClass;
//import com.dining.model.bean.Dining;
//import com.dining.model.dao.DiningDao;
//
//public class DiningListController extends SuperClass{
//	private final String PREFIX= "dining/";
//	
//	@Override
//	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		
//		super.doGet(request, response);
//		
//		
//		DiningDao dao = new DiningDao();
//		List<Dining> diningList = dao.getDiningList();
//		
//		
//		request.setAttribute("diningList", diningList);
//		super.gotoPage(PREFIX + "relist.jsp");
//		
//		
//	}            							===========  리스트 가져올 때 콘트롤러 사용 안할 것 같아서 일단 막음.... ====================
//	
//}
