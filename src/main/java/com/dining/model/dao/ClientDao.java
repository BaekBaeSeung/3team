package com.dining.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dining.model.bean.Client;
import com.dining.model.bean.Dining;


public class ClientDao extends SuperDao {

	public int updateData(Client bean) {
		String sql = " update Client set Password=?, Name=?, Gender=?, Email=?, Birthday=?, Telephone=? ";
		sql += " where C_id = ?";
		
		PreparedStatement pstmt = null;
		int cnt = -9999999;

		try {
			super.conn = super.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);

			
			pstmt.setString(1, bean.getPassword());
			
			
			pstmt.setString(2, bean.getName());
			System.out.println("132131231232131"+bean.getName());
			pstmt.setString(3, bean.getGender());
			pstmt.setString(4, bean.getEmail());
			pstmt.setString(5, bean.getBirthday());
			pstmt.setString(6, bean.getTelephone());
			pstmt.setString(7, bean.getC_id());
			
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
	
	public Client getDataBean(String C_id) {
		String sql = "select * from Client ";
		sql += " where C_id = ?";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Client bean = null;

		super.conn = super.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, C_id);
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
		System.out.println("C_id로 조회 결과 :");
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
	
	public int insertData(Client bean) {
		System.out.println(bean);

		String sql = " insert into Client(C_id, Password, Name, Gender, Email, Birthday, Telephone)";
		sql += " values(?, ?, ?, ?, ?, ?, ?) ";

		PreparedStatement pstmt = null;
		int cnt = -999999;

		try {
			super.conn = super.getConnection();
			conn.setAutoCommit(false);

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, bean.getC_id());
			pstmt.setString(2, bean.getPassword());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getGender());
			pstmt.setString(5, bean.getEmail());
			pstmt.setString(6, bean.getBirthday());
			pstmt.setString(7, bean.getTelephone());

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

	public Client getDataByIdAndPassword(String C_id, String Password) { // 아이디와 비밀번호를 이용하여 해당 회원이 존재하는지 확인합니다.
		String sql = "select * from Client ";
		sql += " where C_id = ? and Password = ? ";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Client bean = null;

		super.conn = super.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, C_id);
			pstmt.setString(2, Password);
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

	
	public List<Client> getDataList() {
		String sql = "select * from Client ";
		PreparedStatement pstmt = null; // 문장 객체
		ResultSet rs = null;

		List<Client> dataList = new ArrayList<Client>();

		super.conn = super.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			// 요소들 읽어서 컬렉션에 담습니다.
			while (rs.next()) {
				Client bean = this.resultSet2Bean(rs);

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

	private Client resultSet2Bean(ResultSet rs) {
		try {
			Client bean = new Client();
			bean.setC_id(rs.getString("C_id"));
			bean.setPassword(rs.getString("Password"));
			bean.setName(rs.getString("Name"));
			bean.setGender(rs.getString("Gender"));
			bean.setEmail(rs.getString("Email"));
			bean.setBirthday(String.valueOf(rs.getDate("Birthday")));
			bean.setTelephone(rs.getString("Telephone"));
			
			return bean;

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
