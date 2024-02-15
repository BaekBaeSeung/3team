package com.dining.controller.User;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;

public class WishListController extends SuperClass{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		super.doGet(request, response);
		
		List<WishList> wishList = null;
		if(loginfo != null) {
			wishList = WishManager.getInstance().getWishItems(loginfo.getU_id());
			}
		
		// 가져온 위시리스트를 request 속성에 설정하여 JSP로 전달합니다.
        request.setAttribute("wishList", wishList);
        
     // 위시리스트 페이지로 이동합니다.
        gotoPage("/wishlist.jsp");
		
		
		
   }
	
}
