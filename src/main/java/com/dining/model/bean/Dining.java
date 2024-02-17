package com.dining.model.bean;

public class Dining {
	private int D_no;
	private String C_id;
	private String Name; // 다이닝이름
	private String Address;
	private String Address_Detail;
	private String Category;
	private String Style1;
	private String Style2;
	private String Style3;
	private String Style4;
	private String Style5;
	private String Content;
	private String Opentime;
	private String Close_time;
	private String Break_time;
	private String Holiday;
	private String Phone;
	private String Parking_status;
	private String Amenities;
	private int Capacity;
	private String Notice;
	private String Image01;
	private String Image02;
	private String Image03;
	private String Image04;

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

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getAddress_Detail() {
		return Address_Detail;
	}

	public void setAddress_Detail(String address_Detail) {
		Address_Detail = address_Detail;
	}

	public String getCategory() {
		return Category;
	}

	public void setCategory(String category) {
		Category = category;
	}

	public String getStyle1() {
		return Style1;
	}

	public void setStyle1(String style1) {
		Style1 = style1;
	}

	public String getStyle2() {
		return Style2;
	}

	public void setStyle2(String style2) {
		Style2 = style2;
	}

	public String getStyle3() {
		return Style3;
	}

	public void setStyle3(String style3) {
		Style3 = style3;
	}

	public String getStyle4() {
		return Style4;
	}

	public void setStyle4(String style4) {
		Style4 = style4;
	}

	public String getStyle5() {
		return Style5;
	}

	public void setStyle5(String style5) {
		Style5 = style5;
	}

	public String getContent() {
		return Content;
	}

	public void setContent(String content) {
		Content = content;
	}

	public String getOpentime() {
		return Opentime;
	}

	public void setOpentime(String opentime) {
		Opentime = opentime;
	}

	public String getClose_time() {
		return Close_time;
	}

	public void setClose_time(String close_time) {
		Close_time = close_time;
	}

	public String getBreak_time() {
		return Break_time;
	}

	public void setBreak_time(String break_time) {
		Break_time = break_time;
	}

	public String getHoliday() {
		return Holiday;
	}

	public void setHoliday(String holiday) {
		Holiday = holiday;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}

	public String getParking_status() {
		return Parking_status;
	}

	public void setParking_status(String parking_status) {
		Parking_status = parking_status;
	}

	public String getAmenities() {
		return Amenities;
	}

	public void setAmenities(String amenities) {
		Amenities = amenities;
	}

	public int getCapacity() {
		return Capacity;
	}

	public void setCapacity(int capacity) {
		Capacity = capacity;
	}

	public String getNotice() {
		return Notice;
	}

	public void setNotice(String notice) {
		Notice = notice;
	}

	public String getImage01() {
		return Image01;
	}

	public void setImage01(String image01) {
		Image01 = image01;
	}

	public String getImage02() {
		return Image02;
	}

	public void setImage02(String image02) {
		Image02 = image02;
	}

	public String getImage03() {
		return Image03;
	}

	public void setImage03(String image03) {
		Image03 = image03;
	}

	public String getImage04() {
		return Image04;
	}

	public void setImage04(String image04) {
		Image04 = image04;
	}

	@Override
	public String toString() {
		return "Dining [D_no=" + D_no + ", C_id=" + C_id + ", Name=" + Name + ", Address=" + Address
				+ ", Address_Detail=" + Address_Detail + ", Category=" + Category + ", Style1=" + Style1 + ", Style2="
				+ Style2 + ", Style3=" + Style3 + ", Style4=" + Style4 + ", Style5=" + Style5 + ", Content=" + Content
				+ ", Opentime=" + Opentime + ", Close_time=" + Close_time + ", Break_time=" + Break_time + ", Holiday="
				+ Holiday + ", Phone=" + Phone + ", Parking_status=" + Parking_status + ", Amenities=" + Amenities
				+ ", Capacity=" + Capacity + ", Notice=" + Notice + ", Image01=" + Image01 + ", Image02=" + Image02
				+ ", Image03=" + Image03 + ", Image04=" + Image04 + "]";
	}

	public Dining(int d_no, String c_id, String name, String address, String address_Detail, String category,
			String style1, String style2, String style3, String style4, String style5, String content, String opentime,
			String close_time, String break_time, String holiday, String phone, String parking_status, String amenities,
			int capacity, String notice, String image01, String image02, String image03, String image04) {
		super();
		D_no = d_no;
		C_id = c_id;
		Name = name;
		Address = address;
		Address_Detail = address_Detail;
		Category = category;
		Style1 = style1;
		Style2 = style2;
		Style3 = style3;
		Style4 = style4;
		Style5 = style5;
		Content = content;
		Opentime = opentime;
		Close_time = close_time;
		Break_time = break_time;
		Holiday = holiday;
		Phone = phone;
		Parking_status = parking_status;
		Amenities = amenities;
		Capacity = capacity;
		Notice = notice;
		Image01 = image01;
		Image02 = image02;
		Image03 = image03;
		Image04 = image04;
	}

	public Dining() {
		super();
	}
	

}
