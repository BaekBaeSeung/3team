package com.dining.controller.reservation;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dining.common.SuperClass;
import com.dining.model.bean.Reservation;
import com.dining.model.bean.User;
import com.dining.model.dao.ReservationDao;

public class ReservationHistoryController extends SuperClass{

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("doGet");
        super.doGet(request, response);
        if(super.loginfo==null) {
            super.youNeededLogin();
            return;
        }else {
            ReservationDao dao = new ReservationDao();
            List<Reservation> reservationList = dao.getHistory(super.loginfo.getU_id());
            System.out.println("getU_id : " +super.loginfo.getU_id());
          
            if(reservationList.size()==0) {
                String message = "예약 내역이 존재하지 않습니다. " ;
                super.setAlertMessage(message); 
                new ReservationListController().doGet(request, response);

            }else {
                request.setAttribute("reservationList",reservationList);
                super.gotoPage("reservation/reservationhistory.jsp");
                
            }
        }
    }

}