package com.dining.model.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dining.model.bean.Dining;


public class DiningDao extends SuperDao {

	public List<Dining> getDiningList() {
		String sql = "select * from dining " ;
		PreparedStatement pstmt = null ; // 문장 객체
		ResultSet rs = null ;
		
		List<Dining> dataList = new ArrayList<Dining>();
		
		super.conn = super.getConnection() ;
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery() ;
			
			// 요소들 읽어서 컬렉션에 담습니다.
			while(rs.next()) {				
				Dining bean = this.resultSet2Bean(rs) ;
				
				dataList.add(bean) ;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				super.closeConnection();
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
			
		return dataList ;
	}

	private Dining resultSet2Bean(ResultSet rs) {
		try {
			Dining bean = new Dining() ;			
			bean.setD_no(rs.getInt("D_no"));
			bean.setC_id(rs.getString("C_id"));
			bean.setName(rs.getString("Name"));
			bean.setAddress(rs.getString("Address"));
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
			bean.setAmenities(rs.getString("Amenities"));	
			bean.setCapacity(rs.getInt("Capacity"));	
			bean.setNotice(rs.getString("Notice"));	
			bean.setImage01(rs.getString("Image01"));	
			bean.setImage02(rs.getString("Image02"));	
			bean.setImage03(rs.getString("Image03"));	
			bean.setImage04(rs.getString("Image04"));	
		
	
			return bean ;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null ;
		}
	
	

}
