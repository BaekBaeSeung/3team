package com.shopping.controller.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.Review;
import com.dining.model.dao.ReviewDao;
import com.shopping.controller.review.ReviewInsertController;
import com.shopping.controller.review.ReviewListController;

/*private int Review_no ; 시퀀스 처리로 고려하지 않아도됨.
private String U_id;
private int D_no; 시퀀스 ?? 
private String C_id;
private String Dining_name;
private String image01;
private String image02;
private String image03;
private String Score;
private String Content;
private String Review_Date;*/

public class ReviewInsertController extends SuperClass {
	
	private String PREFIX = "Review/";
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		super.doPost(request, response);
		
		ReviewDao dao = new ReviewDao();
		Review bean = new Review();
		
		String U_id = request.getParameter("U_id");
		/* int D_no = request.getParameter("D_no"); */
		String C_id = request.getParameter("C_id");
		String Dining_name = request.getParameter("Dining_name");
		String image01 = request.getParameter("image01");
		String image02 = request.getParameter("image02");
		String image03 = request.getParameter("image03");
		String Score = request.getParameter("Score");
		String Content = request.getParameter("Content");
		String Review_Date = request.getParameter("Review_Date");
		
		bean.setU_id(U_id);
		bean.setC_id(C_id);
		bean.setDining_name(Dining_name);
		bean.setImage01(image01);
		bean.setImage02(image02);
		bean.setImage03(image03);
		bean.setScore(Score);
		bean.setContent(Content);
		bean.setReview_Date(Review_Date);
		
		int cnt = -1 ;
		cnt = dao.writeReview(bean); 
		if(cnt == 1){ // 인서트 성공
			new ReviewListController().doGet(request, response) ;
			
		}else{ // 인서트 실패
			new ReviewInsertController().doGet(request, response);
		}	
		
		
		
	}
	
	

}
