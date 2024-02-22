
package com.dining.controller.dining;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.controller.client.ClientLoginController;
import com.dining.model.bean.Dining;
import com.dining.model.dao.DiningDao;

public class DiningInsertController extends SuperClass {
	private final String PREFIX = "mainpage/";

	@Override public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		super.doGet(request, response);
		System.out.println("다이닝 인서트 컨트롤러 겟");
	// 라디오 버튼과 체크 박스는 데이터 베이스에서 읽어 동적으로 채웁니다.
	
	/* 
	 * FillItemDao fdao = new FillItemDao(); List<FillItem> genderList =
	 fdao.getDataList("members", "gender"); List<FillItem> marriageList =
	 fdao.getDataList("members", "marriage"); List<FillItem> hobbyList =
	 fdao.getDataList("members", "hobby");
	
	 request.setAttribute("genderList", genderList);
	 request.setAttribute("marriageList", marriageList);
	 request.setAttribute("hobbyList", hobbyList);
	 */
		
		String C_id = request.getParameter("C_id") ;
		request.setAttribute("C_id", C_id) ;
		
		super.gotoPage(PREFIX + "main.jsp"); 

}

	@Override 
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception { 
		super.doPost(request, response);
			
			DiningDao dao = new DiningDao(); 
			Dining bean = new Dining();
	 
			bean.setC_id(request.getParameter("C_id"));
			bean.setName(request.getParameter("Name"));
			bean.setAddress(request.getParameter("Address"));
			bean.setAddress_Detail(request.getParameter("Address_Detail"));
			bean.setCategory(request.getParameter("Category"));
			bean.setStyle1(request.getParameter("Style1"));
			bean.setStyle2(request.getParameter("Style2"));
			bean.setStyle3(request.getParameter("Style3"));
			bean.setStyle4(request.getParameter("Style4"));
			bean.setStyle5(request.getParameter("Style5"));
			bean.setContent(request.getParameter("Content"));
			bean.setOpentime(request.getParameter("Opentime"));
			bean.setClose_time(request.getParameter("Close_time"));
			bean.setBreak_time(request.getParameter("Break_time"));
			bean.setHoliday(request.getParameter("Holiday"));
			bean.setPhone(request.getParameter("Phone"));
			bean.setParking_status(request.getParameter("Parking_status"));
			bean.setAmenities(request.getParameter("Amenities"));
			bean.setCapacity(Integer.parseInt(request.getParameter("Capacity")));
			bean.setNotice(request.getParameter("Notice"));
			bean.setImage01(request.getParameter("Image01"));
			bean.setImage02(request.getParameter("Image02"));
			bean.setImage03(request.getParameter("Image03"));
			bean.setImage04(request.getParameter("Image04"));
			
				
			int cnt = dao.insertData(bean);
			
			System.out.println("cnt(다이닝인서트컨트롤러빈) : " + cnt);
			System.out.println("bean(다이닝인서트컨트롤러빈) : " + bean);
			
			if (cnt == 1) { // 인서트 성공
				
				super.session.setAttribute("clientinfo", bean) ;
				System.out.println("인서트 성공 : " + bean);
				super.gotoPage(PREFIX + "main.jsp");
		
			} else { // 인서트 실패 
				new DiningGotoInsertController().doGet(request, response);
				System.out.println("인서트 실패 : " + bean);
			}
	}		
}
	

 

