package com.dining.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.dining.model.bean.Review;

public class ReviewDao extends SuperDao {

    private Connection conn;

    public ReviewDao(Connection conn) {
        this.conn = conn;
    }



	public ReviewDao() {
		super();
	}



	// 리뷰 작성 메서드
    public int writeReview(Review review) {
        int result = 0;
        PreparedStatement pstmt = null;

        try {
            String sql = "nsert into reviews (Review_no, U_id, D_no, C_id, Dining_name, image01, image02, image03, Score, Content, Review_Date) "; 
            sql += " values(seqboard.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" ;
                        
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, review.getU_id());
            pstmt.setInt(2, review.getD_no());
            pstmt.setString(3, review.getC_id());
            pstmt.setString(4, review.getDining_name());
            pstmt.setString(5, review.getImage01());
            pstmt.setString(6, review.getImage02());
            pstmt.setString(7, review.getImage03());
            pstmt.setString(8, review.getScore());
            pstmt.setString(9, review.getContent());
            pstmt.setString(10, review.getReview_Date());

            result = pstmt.executeUpdate();
            conn.commit();
            
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) {
                    pstmt.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return result;
    }
}


