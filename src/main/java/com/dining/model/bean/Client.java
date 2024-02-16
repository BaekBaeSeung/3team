package com.dining.model.bean;

/*
C_id(PK)	VARCHAR(30)	클라이언트 아이디(PK)	NOT NULL	N/A
Password	VARCHAR(30)	클라이언트 비밀번호	NOT NULL	N/A
Name	VARCHAR(30)	클라이언트 이름	NOT NULL	N/A
Gender	VARCHAR(30)	클라이언트 성별	NOT NULL	N/A
Email	VARCHAR(255)	클라이언트 이메일	NOT NULL	N/A
Birthday	DATE	클라이언트 생년월일	NOT NULL	N/A
Telephone VARCHAR(30) 클라이언트 전화번호 NOT NULL N/A
*/
public class Client {
	private String C_id;
	private String Password;
	private String Name;
	private String Gender;
	private String Email;
	private String Birthday;
	private String Telephone;
	
	
	public String getC_id() {
		return C_id;
	}
	public void setC_id(String c_id) {
		C_id = c_id;
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
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getBirthday() {
		return Birthday;
	}
	public void setBirthday(String birthday) {
		Birthday = birthday;
	}
	public String getTelephone() {
		return Telephone;
	}
	public void setTelephone(String telephone) {
		Telephone = telephone;
	}
	
	
	@Override
	public String toString() {
		return "Client [C_id=" + C_id + ", Password=" + Password + ", Name=" + Name + ", Gender=" + Gender + ", Email="
				+ Email + ", Birthday=" + Birthday + ", Telephone=" + Telephone + "]";
	}
	
	
	public Client(String c_id, String password, String name, String gender, String email, String birthday,
			String telephone) {
		super();
		C_id = c_id;
		Password = password;
		Name = name;
		Gender = gender;
		Email = email;
		Birthday = birthday;
		Telephone = telephone;
	}
	
	
	public Client() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
	
}
	
	