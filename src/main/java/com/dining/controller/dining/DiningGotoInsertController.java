package com.dining.controller.dining;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;

public class DiningGotoInsertController extends SuperClass {
    private final String PREFIX = "client/";

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.doGet(request, response);

        String C_id = request.getParameter("C_id");
     

        if (C_id != null) {
            request.setAttribute("C_id", C_id);
            System.out.println("CID_DiningGotoInsertController: " + C_id);
            super.gotoPage(PREFIX + "diningInsertForm.jsp");
         
        } else {
            System.out.println("C_id이 null입니다.");
            String message = "잘못된 정보 입니다.";
            super.setAlertMessage(message);
            // C_id가 null인 경우에 대한 처리를 추가하거나, 다른 작업을 수행할 수 있습니다.
        }     
    }
}
