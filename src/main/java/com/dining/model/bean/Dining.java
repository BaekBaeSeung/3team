package com.dining.model.bean;

public class Dining {
   private int D_no;
   private String C_id;
   private String Name;
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
      return this.D_no;
   }

   public void setD_no(int d_no) {
      this.D_no = d_no;
   }

   public String getC_id() {
      return this.C_id;
   }

   public void setC_id(String c_id) {
      this.C_id = c_id;
   }

   public String getName() {
      return this.Name;
   }

   public void setName(String name) {
      this.Name = name;
   }

   public String getAddress() {
      return this.Address;
   }

   public void setAddress(String address) {
      this.Address = address;
   }

   public String getAddress_Detail() {
      return this.Address_Detail;
   }

   public void setAddress_Detail(String address_Detail) {
      this.Address_Detail = address_Detail;
   }

   public String getCategory() {
      return this.Category;
   }

   public void setCategory(String category) {
      this.Category = category;
   }

   public String getStyle1() {
      return this.Style1;
   }

   public void setStyle1(String style1) {
      this.Style1 = style1;
   }

   public String getStyle2() {
      return this.Style2;
   }

   public void setStyle2(String style2) {
      this.Style2 = style2;
   }

   public String getStyle3() {
      return this.Style3;
   }

   public void setStyle3(String style3) {
      this.Style3 = style3;
   }

   public String getStyle4() {
      return this.Style4;
   }

   public void setStyle4(String style4) {
      this.Style4 = style4;
   }

   public String getStyle5() {
      return this.Style5;
   }

   public void setStyle5(String style5) {
      this.Style5 = style5;
   }

   public String getContent() {
      return this.Content;
   }

   public void setContent(String content) {
      this.Content = content;
   }

   public String getOpentime() {
      return this.Opentime;
   }

   public void setOpentime(String opentime) {
      this.Opentime = opentime;
   }

   public String getClose_time() {
      return this.Close_time;
   }

   public void setClose_time(String close_time) {
      this.Close_time = close_time;
   }

   public String getBreak_time() {
      return this.Break_time;
   }

   public void setBreak_time(String break_time) {
      this.Break_time = break_time;
   }

   public String getHoliday() {
      return this.Holiday;
   }

   public void setHoliday(String holiday) {
      this.Holiday = holiday;
   }

   public String getPhone() {
      return this.Phone;
   }

   public void setPhone(String phone) {
      this.Phone = phone;
   }

   public String getParking_status() {
      return this.Parking_status;
   }

   public void setParking_status(String parking_status) {
      this.Parking_status = parking_status;
   }

   public String getAmenities() {
      return this.Amenities;
   }

   public void setAmenities(String amenities) {
      this.Amenities = amenities;
   }

   public int getCapacity() {
      return this.Capacity;
   }

   public void setCapacity(int capacity) {
      this.Capacity = capacity;
   }

   public String getNotice() {
      return this.Notice;
   }

   public void setNotice(String notice) {
      this.Notice = notice;
   }

   public String getImage01() {
      return this.Image01;
   }

   public void setImage01(String image01) {
      this.Image01 = image01;
   }

   public String getImage02() {
      return this.Image02;
   }

   public void setImage02(String image02) {
      this.Image02 = image02;
   }

   public String getImage03() {
      return this.Image03;
   }

   public void setImage03(String image03) {
      this.Image03 = image03;
   }

   public String getImage04() {
      return this.Image04;
   }

   public void setImage04(String image04) {
      this.Image04 = image04;
   }

   public String toString() {
      return "Dining [D_no=" + this.D_no + ", C_id=" + this.C_id + ", Name=" + this.Name + ", Address=" + this.Address + ", Address_Detail=" + this.Address_Detail + ", Category=" + this.Category + ", Style1=" + this.Style1 + ", Style2=" + this.Style2 + ", Style3=" + this.Style3 + ", Style4=" + this.Style4 + ", Style5=" + this.Style5 + ", Content=" + this.Content + ", Opentime=" + this.Opentime + ", Close_time=" + this.Close_time + ", Break_time=" + this.Break_time + ", Holiday=" + this.Holiday + ", Phone=" + this.Phone + ", Parking_status=" + this.Parking_status + ", Amenities=" + this.Amenities + ", Capacity=" + this.Capacity + ", Notice=" + this.Notice + ", Image01=" + this.Image01 + ", Image02=" + this.Image02 + ", Image03=" + this.Image03 + ", Image04=" + this.Image04 + "]";
   }

   public Dining(int d_no, String c_id, String name, String address, String address_Detail, String category, String style1, String style2, String style3, String style4, String style5, String content, String opentime, String close_time, String break_time, String holiday, String phone, String parking_status, String amenities, int capacity, String notice, String image01, String image02, String image03, String image04) {
      this.D_no = d_no;
      this.C_id = c_id;
      this.Name = name;
      this.Address = address;
      this.Address_Detail = address_Detail;
      this.Category = category;
      this.Style1 = style1;
      this.Style2 = style2;
      this.Style3 = style3;
      this.Style4 = style4;
      this.Style5 = style5;
      this.Content = content;
      this.Opentime = opentime;
      this.Close_time = close_time;
      this.Break_time = break_time;
      this.Holiday = holiday;
      this.Phone = phone;
      this.Parking_status = parking_status;
      this.Amenities = amenities;
      this.Capacity = capacity;
      this.Notice = notice;
      this.Image01 = image01;
      this.Image02 = image02;
      this.Image03 = image03;
      this.Image04 = image04;
   }

   public Dining() {
   }
}
