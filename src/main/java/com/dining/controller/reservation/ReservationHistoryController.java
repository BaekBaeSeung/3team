package com.dining.controller.reservation;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.Reservation;
import com.dining.model.dao.ReservationDao;

public class ReservationHistoryController extends SuperClass{

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        super.doGet(request, response);
        Reservation bean = new Reservation();
        bean.setU_id(request.getParameter("U_id"));
        System.out.println("ㅇㅇㅇㅇ U_id : " +bean.getU_id());
        if(super.loginfo==null) {
            super.youNeededLogin();
            return;
        }else {
            ReservationDao dao = new ReservationDao();
            List<Reservation> reservationList = dao.getHistory(super.loginfo.getU_id());
            bean.setU_id(request.getParameter("U_id"));
            
            System.out.println("getU_id : " +super.loginfo.getU_id());
          
            if(reservationList.size()==0) {
                String message = "예약 내역이 존재하지 않습니다. " ;
                super.setAlertMessage(message); 
                new ReservationListController().doGet(request, response);

            }else {
            	request.setAttribute("loginfo",bean);
                request.setAttribute("reservationList",reservationList);
                super.gotoPage("reservation/reservationhistory.jsp");
                
            }
        }
    }

}