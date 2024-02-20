package com.dining.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dining.model.bean.Dining;

public class DiningDao extends SuperDao {

	public Dining getDataBean(int D_no) {
		String sql = " select * from Dining ";
		sql += " where D_no = ?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Dining bean = null;

		super.conn = super.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, D_no);
			
			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean = this.resultSet2Bean(rs);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				super.closeConnection();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		System.out.println("D_no 데이터 조회 결과 :");
		System.out.println(bean);

		return bean;
	}

	private Dining resultSet2Bean(ResultSet rs) {
		try {
			Dining bean = new Dining();

			bean.setD_no(rs.getInt("D_no"));
			bean.setC_id(rs.getString("C_id"));
			bean.setName(rs.getString("Name"));
			bean.setAddress(rs.getString("Address"));
			bean.setAddress_Detail(rs.getString("Address_Detail"));
			bean.setCategory(rs.getString("Category"));
			bean.setStyle1(rs.getString("Style1"));
			bean.setStyle2(rs.getString("Style2"));
			bean.setStyle3(rs.getString("Style3"));
			bean.setStyle4(rs.getString("Style4"));
			bean.setStyle5(rs.getString("Style5"));
			bean.setContent(rs.getString("Content"));
			bean.setOpentime(rs.getString("Opentime"));
			bean.setClose_time(rs.getString("Close_time"));
			bean.setBreak_time(rs.getString("Break_time"));
			bean.setBreak_time(rs.getString("Holiday"));
			bean.setBreak_time(rs.getString("Phone"));
			bean.setBreak_time(rs.getString("Parking_status"));
			bean.setAmenities(rs.getString("Amenities"));
			bean.setCapacity(rs.getInt("Capacity"));
			bean.setNotice(rs.getString("Notice"));
			bean.setImage01(rs.getString("Image01"));
			bean.setImage02(rs.getString("Image02"));
			bean.setImage03(rs.getString("Image03"));
			bean.setImage04(rs.getString("Image04"));

			return bean;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
}
