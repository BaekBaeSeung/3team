package com.dining.model.bean;

public class Reservation {
	
	private int Reservation_no;
	private String U_id;
	private String C_id;
	private String Reservation_Date;
	private int R_Capacity;
	
	
	public int getReservation_no() {
		return Reservation_no;
	}
	public void setReservation_no(int reservation_no) {
		Reservation_no = reservation_no;
	}
	public String getU_id() {
		return U_id;
	}
	public void setU_id(String u_id) {
		U_id = u_id;
	}
	public String getC_id() {
		return C_id;
	}
	public void setC_id(String c_id) {
		C_id = c_id;
	}
	public String getReservation_Date() {
		return Reservation_Date;
	}
	public void setReservation_Date(String reservation_Date) {
		Reservation_Date = reservation_Date;
	}
	public int getR_Capacity() {
		return R_Capacity;
	}
	public void setR_Capacity(int r_Capacity) {
		R_Capacity = r_Capacity;
	}
	
	@Override
	public String toString() {
		return "Reservation [Reservation_no=" + Reservation_no + ", U_id=" + U_id + ", C_id=" + C_id
				+ ", Reservation_Date=" + Reservation_Date + ", R_Capacity=" + R_Capacity + "]";
	}
	public Reservation(int reservation_no, String u_id, String c_id, String reservation_Date, int r_Capacity) {
		super();
		Reservation_no = reservation_no;
		U_id = u_id;
		C_id = c_id;
		Reservation_Date = reservation_Date;
		R_Capacity = r_Capacity;
	}
	
	public Reservation() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	

}
