package com.dining.model.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ReservationDao extends SuperDao {
    

    public boolean makeReservation(String userId, String restaurantId, String reservationDate, int capacity) {
        String sql = "insert into reservation (u_id, c_id, reservation_date, r_capacity) VALUES (?, ?, ?, ?)";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, userId);
            pstmt.setString(2, restaurantId);
            pstmt.setString(3, reservationDate);
            pstmt.setInt(4, capacity);

            int rowsAffected = pstmt.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}