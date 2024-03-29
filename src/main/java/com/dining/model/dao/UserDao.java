package com.dining.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dining.common.SuperClass;
import com.dining.model.bean.User;
import com.dining.utility.MyUtility;

public class UserDao extends SuperDao {

	public int updateData(User bean) {
		String sql = " update CUSTOMER set Password=?, Name=?, Nickname=?, Phone=?, Birth=?, Email=?, Address=? , Address_Detail=? ";
		sql += " where U_id = ?";

		PreparedStatement pstmt = null;
		int cnt = -9999999;

		try {
			super.conn = super.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bean.getPassword());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getNickname());
			pstmt.setString(4, bean.getPhone());
			pstmt.setString(5, bean.getBirth());
			pstmt.setString(6, bean.getEmail());
			pstmt.setString(7, bean.getAddress());
			pstmt.setString(8, bean.getAddress_Detail());
			pstmt.setString(9, bean.getU_id());


			cnt = pstmt.executeUpdate();
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

	public User getDataBean(String U_id) {
		String sql = "select * from Customer ";
		sql += " where U_id = ?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User bean = null;

		super.conn = super.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, U_id);
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
		System.out.println("U_id로 조회 결과 :");
		System.out.println(bean);

		return bean;
	}

	/*
	 * Customer U_id(PK) VARCHAR(30) 유저 아이디(PK) NOT NULL 미로그인(0),일반 사용자(1), 관리자(2)
	 * Password VARCHAR(30) 유저 비밀번호 NOT NULL N/A Name VARCHAR(30) 유저 이름 NOT NULL N/A
	 * Nickname VARCHAR(30) 유저 닉네임 NOT NULL N/A Phone VARCHAR(30) 전화번호 NOT NULL N/A
	 * Birth DATE 유저 생년월일 NOT NULL N/A Email VARCHAR(30) 유저 이메일 NOT NULL N/A Address
	 * VARCHAR(255) 유저 주소 NOT NULL N/A Address_Detail VARCHAR(128) 유저 상세주소 NULL N/A
	 */
	public int deleteData(String U_id) {
		int cnt = -1;
		String sql = "";
		String sqlDeleteReservation = "";
		
		User bean = this.getDataBean(U_id);

		PreparedStatement pstmt = null;
		PreparedStatement pstmtReservation = null;
		
		System.out.println("다오다오다오다오다오다다오"+U_id);
		try {
			conn = super.getConnection();
			conn.setAutoCommit(false);
			
			System.out.println("conn.setAutoCommit(false) 밑"+U_id);
			// step03 : 회원 테이블 데이터를 삭제합니다.
			sql = " delete from Customer where U_id = ? ";
			sqlDeleteReservation = "DELETE FROM Reservation WHERE U_id = ?";
			
			pstmtReservation = conn.prepareStatement(sqlDeleteReservation);
			pstmt = conn.prepareStatement(sql);
			
			pstmtReservation.setString(1, U_id);
			pstmt.setString(1, U_id);
			
			pstmtReservation.executeUpdate();
			cnt = pstmt.executeUpdate();
			
			if (pstmt != null) {
				pstmt.close();
			}
		
			System.out.println("conn.commit() 위"+U_id);
			conn.commit();

		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			try {
				super.closeConnection();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return cnt;
		
	}

	public int insertData(User bean) {
		System.out.println(bean);

		String sql = " insert into Customer(U_id, Password, Name, Nickname, Phone, Birth, Email, Address, Address_Detail)";
		sql += " values(?, ?, ?, ?, ?, ?, ?, ?, ?) ";

		PreparedStatement pstmt = null;
		int cnt = -999999;

		try {
			super.conn = super.getConnection();
			conn.setAutoCommit(false);

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bean.getU_id());
			pstmt.setString(2, bean.getPassword());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getNickname());
			pstmt.setString(5, bean.getPhone());
			pstmt.setString(6, bean.getBirth());
			pstmt.setString(7, bean.getEmail());
			pstmt.setString(8, bean.getAddress());
			pstmt.setString(9, bean.getAddress_Detail());

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

	public User getDataByIdAndPassword(String U_id, String Password) { // 아이디와 비밀번호를 이용하여 해당 회원이 존재하는지 확인합니다.
		String sql = " select * from Customer ";
		sql += " where U_id = ? and Password = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User bean = null;

		super.conn = super.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, U_id);
			pstmt.setString(2, Password);
			System.out.println(sql);
			System.out.println(U_id);
			System.out.println(Password);
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
		
		return bean;
	}

	/*
	 * public List<User> getDataList02(){
	 * 
	 * 
	 * List<User> dataList = new ArrayList<User>();
	 * 
	 * dataList.add(new User("kimho", "김호철", "abc123", "female", "2023/08/20", "미혼",
	 * "music/art/sport/reading/", "마포", 100)); dataList.add(new User("park", "박혁신",
	 * "abc123", "male", "2002/06/24", "미혼", "music/art/photo/cooking/", "용산",
	 * 200)); dataList.add(new User("choi", "최만위", "abc123", "female", "2020/12/12",
	 * "이혼", "travel/photo/cooking/", "강남", 300)); dataList.add(new User("kim",
	 * "김동섭", "abc123", "male", "2023/08/20", "결혼", "music/art/photo/cooking/",
	 * "마포", 400)); dataList.add(new User("lee", "이수돌", "abc123", "male",
	 * "2023/08/20", "이혼", "music/art/sport/reading/", "서대문", 500));
	 * 
	 * return dataList ; }
	 */
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
			bean.setBirth(String.valueOf(rs.getDate("Birth")));
			bean.setEmail(rs.getString("Email"));
			bean.setAddress(rs.getString("Address"));
			bean.setAddress_Detail(rs.getString("Address_Detail"));

			return bean;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
