package com.dining.model.bean;

public class Review {
	
	private int Review_no;
	private String U_id;
	private int D_no;
	private String C_id;
	private String Dining_name;
	private String image01;
	private String image02;
	private String image03;
	private String Score;
	private String Content;
	private String Review_Date;
	
	public int getReview_no() {
		return Review_no;
	}
	public void setReview_no(int review_no) {
		Review_no = review_no;
	}
	public String getU_id() {
		return U_id;
	}
	public void setU_id(String u_id) {
		U_id = u_id;
	}
	public int getD_no() {
		return D_no;
	}
	public void setD_no(int d_no) {
		D_no = d_no;
	}
	public String getC_id() {
		return C_id;
	}
	public void setC_id(String c_id) {
		C_id = c_id;
	}
	public String getDining_name() {
		return Dining_name;
	}
	public void setDining_name(String dining_name) {
		Dining_name = dining_name;
	}
	public String getImage01() {
		return image01;
	}
	public void setImage01(String image01) {
		this.image01 = image01;
	}
	public String getImage02() {
		return image02;
	}
	public void setImage02(String image02) {
		this.image02 = image02;
	}
	public String getImage03() {
		return image03;
	}
	public void setImage03(String image03) {
		this.image03 = image03;
	}
	public String getScore() {
		return Score;
	}
	public void setScore(String score) {
		Score = score;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public String getReview_Date() {
		return Review_Date;
	}
	public void setReview_Date(String review_Date) {
		Review_Date = review_Date;
	}
	@Override
	public String toString() {
		return "Review [Review_no=" + Review_no + ", U_id=" + U_id + ", D_no=" + D_no + ", C_id=" + C_id
				+ ", Dining_name=" + Dining_name + ", image01=" + image01 + ", image02=" + image02 + ", image03="
				+ image03 + ", Score=" + Score + ", Content=" + Content + ", Review_Date=" + Review_Date + "]";
	}
	public Review(int review_no, String u_id, int d_no, String c_id, String dining_name, String image01, String image02,
			String image03, String score, String content, String review_Date) {
		super();
		Review_no = review_no;
		U_id = u_id;
		D_no = d_no;
		C_id = c_id;
		Dining_name = dining_name;
		this.image01 = image01;
		this.image02 = image02;
		this.image03 = image03;
		Score = score;
		Content = content;
		Review_Date = review_Date;
	}
	
	
	public Review() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
