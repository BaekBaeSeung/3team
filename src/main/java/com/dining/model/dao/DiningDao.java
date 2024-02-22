package com.dining.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dining.model.bean.Client;
import com.dining.model.bean.Dining;

public class DiningDao extends SuperDao {

	public int insertData(Dining bean) {
		System.out.println(bean);

		String sql = " insert INTO Dining (D_no, C_id, Name, Address, Address_Detail, Category, Style1, Style2, Style3, Style4, Style5, Content, Opentime, Close_time, Break_time, Holiday, Phone, Parking_status, Amenities, Capacity, Notice, Image01, Image02, Image03, Image04) ";
		sql += " values (Seq_D_no.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		int cnt = -999999;

		try {
			super.conn = super.getConnection();
			conn.setAutoCommit(false);

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bean.getC_id());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getAddress());
			pstmt.setString(4, bean.getAddress_Detail());
			pstmt.setString(5, bean.getCategory());
			pstmt.setString(6, bean.getStyle1());
			pstmt.setString(7, bean.getStyle2());
			pstmt.setString(8, bean.getStyle3());
			pstmt.setString(9, bean.getStyle4());
			pstmt.setString(10, bean.getStyle5());
			pstmt.setString(11, bean.getContent());
			pstmt.setString(12, bean.getOpentime());
			pstmt.setString(13, bean.getClose_time());
			pstmt.setString(14, bean.getBreak_time());
			pstmt.setString(15, bean.getHoliday());
			pstmt.setString(16, bean.getPhone());
			pstmt.setString(17, bean.getParking_status());
			pstmt.setString(18, bean.getAmenities());
			pstmt.setInt(19, bean.getCapacity());
			pstmt.setString(20, bean.getNotice());
			pstmt.setString(21, bean.getImage01());
			pstmt.setString(22, bean.getImage02());
			pstmt.setString(23, bean.getImage03());
			pstmt.setString(24, bean.getImage04());

			cnt = pstmt.executeUpdate();
			conn.commit();

		} catch (Exception e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				super.closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return cnt;
	}

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
			bean.setHoliday(rs.getString("Holiday"));
			bean.setPhone(rs.getString("Phone"));
			bean.setParking_status(rs.getString("Parking_status"));
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
