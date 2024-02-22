package com.dining.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dining.model.bean.Reservation;
import com.dining.model.bean.User;

public class ReservationDao extends SuperDao {
	
public int deleteData(int reservation_no) {
		
	String sql = " delete from reservation where reservation_no = ? " ;
	
	PreparedStatement pstmt = null ;
	int cnt = -9999999 ;
	
	try {
		super.conn = super.getConnection() ;
		// 자동 커밋 기능을 비활성화 시킵니다.
		// 실행이 성공적으로 완료된 이후 commit() 메소드를 명시해 줍니다. 
		conn.setAutoCommit(false);			
		pstmt = conn.prepareStatement(sql) ;
		
		pstmt.setInt(1, reservation_no);
		
		cnt = pstmt.executeUpdate() ;			
		conn.commit();
		
	} catch (Exception e) {
		e.printStackTrace();
		try {
			conn.rollback();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
	} finally {
		try {
			if(pstmt != null) {pstmt.close();}
			super.closeConnection();
		} catch (Exception e2) {
			e2.printStackTrace();
		}
	}		
	return cnt ;

	}


	public int insertData(Reservation bean) {
		System.out.println(bean);

		String sql = " insert into Reservation(Reservation_no, U_id, C_id, Reservation_Date, R_Capacity)";
		sql += " VALUES (SEQ_RESERVATION_NO.nextval, ?, ?, TO_DATE(?, 'YYYY-MM-DD HH24:MI'), ?)";
//SEQ_RESERVATION_NO.nextval
		PreparedStatement pstmt = null;
		int cnt = -999999;

		try {
			super.conn = super.getConnection();
			conn.setAutoCommit(false);

			pstmt = conn.prepareStatement(sql);
			

			pstmt.setString(1, bean.getU_id());
			pstmt.setString(2, bean.getC_id());
			pstmt.setString(3, bean.getReservation_Date());
			pstmt.setInt(4, bean.getR_Capacity());

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


	public List<User> getDataList() {
		String sql = "select * from Customer ";
		PreparedStatement pstmt = null; // 문장 객체
		ResultSet rs = null;

		List<User> dataList = new ArrayList<User>();

		super.conn = super.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			// 요소들 읽어서 컬렉션에 담습니다.
			while (rs.next()) {
				User bean = this.resultSet2Bean(rs);

				dataList.add(bean);
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

		return dataList;
	}

	private User resultSet2Bean(ResultSet rs) {
		try {
			User bean = new User();
			bean.setU_id(rs.getString("U_id"));
			bean.setPassword(rs.getString("Password"));
			bean.setName(rs.getString("Name"));
			bean.setNickname(rs.getString("Nickname"));
			bean.setPhone(rs.getString("Phone"));
			bean.setBirth(rs.getString("Birth"));
			bean.setEmail(rs.getString("Email"));
			bean.setAddress(rs.getString("Address"));
			bean.setAddress_Detail(rs.getString("Address_Detail"));

			return bean;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<Reservation> getHistory(String U_id) {
		PreparedStatement pstmt = null;
		ResultSet rs = null ;		
		String sql = " select * from Reservation where U_id = ? order by reservation_no asc, reservation_date desc " ;	
		System.out.println("Reservation");
		List<Reservation> dataList = new ArrayList<Reservation>() ;
		
		try {
			conn = super.getConnection() ;
			pstmt = conn.prepareStatement(sql) ;
			pstmt.setString(1, U_id) ;
			rs = pstmt.executeQuery() ;
			
			while(rs.next()) {
				dataList.add(this.makeReservationBean(rs)) ;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null){rs.close();}
				if(pstmt!=null){pstmt.close();}
				super.closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return dataList;
	}


	private Reservation makeReservationBean(ResultSet rs) {
		Reservation bean = new Reservation();

	        try {
	            bean.setReservation_no(rs.getInt("reservation_no"));
	            bean.setReservation_Date(String.valueOf(rs.getDate("reservation_date")));
	            bean.setR_Capacity(rs.getInt("r_capacity"));

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return bean;
	}

	



}
