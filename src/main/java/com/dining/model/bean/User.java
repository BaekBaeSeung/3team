package com.dining.model.bean;
/*
U_id(PK)	VARCHAR2(30)	유저 아이디(PK)	NOT NULL	미로그인(0), 일반 사용자(1), 관리자(2)
Password	VARCHAR2(30)	유저 비밀번호	NOT NULL	N/A
Name	VARCHAR2(30)	유저 이름	NOT NULL	N/A
Nickname	VARCHAR2(30)	유저 닉네임	NOT NULL	N/A
Phone	VARCHAR2(30)	전화번호	NOT NULL	N/A
Birth	VARCHAR2(30)	유저 생년월일	NOT NULL	N/A
Email	VARCHAR2(30)	유저 이메일	NOT NULL	N/A
Address_Detail	VARCHAR2(128)	유저 상세주소	NULL	N/A
Address	VARCHAR2(255)	유저 주소	NOT NULL	N/A

*/
public class User {
	private String U_id;
	private String Password;
	private String Name;
	private String Nickname;
	private String Phone;
	private String Birth;
	private String Email;
	private String Address;
	private String Address_Detail;
	
	public String getU_id() {
		return U_id;
	}
	public void setU_id(String u_id) {
		U_id = u_id;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getNickname() {
		return Nickname;
	}
	public void setNickname(String nickname) {
		Nickname = nickname;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getBirth() {
		return Birth;
	}
	public void setBirth(String birth) {
		Birth = birth;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
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
	
	public User(String u_id, String password, String name, String nickname, String phone, String birth, String email,
			String address, String address_Detail) {
		super();
		U_id = u_id;
		Password = password;
		Name = name;
		Nickname = nickname;
		Phone = phone;
		Birth = birth;
		Email = email;
		Address = address;
		Address_Detail = address_Detail;
	}
	
	public User() {
		super();
	}
	
	@Override
	public String toString() {
		return "User [U_id=" + U_id + ", Password=" + Password + ", Name=" + Name + ", Nickname=" + Nickname
				+ ", Phone=" + Phone + ", Birth=" + Birth + ", Email=" + Email + ", Address=" + Address
				+ ", Address_Detail=" + Address_Detail + "]";
	}
	
	
}
