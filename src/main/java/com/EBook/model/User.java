package com.EBook.model;

public class User {
	private int User_ID;
	private String User_name;
	private String Email;
	private String Password;
	private String Phone;
	private String Address;
	private String City;
	private String Postal_code;
	private String Country;
	private String Registration_date;
	private String Status;
	private String Date_of_birth;
	private String role;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getUser_ID() {
		return User_ID;
	}
	public void setUser_ID(int user_ID) {
		User_ID = user_ID;
	}
	public String getUser_name() {
		return User_name;
	}
	public void setUser_name(String user_name) {
		User_name = user_name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getPostal_code() {
		return Postal_code;
	}
	public void setPostal_code(String postal_code) {
		Postal_code = postal_code;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	public String getRegistration_date() {
		return Registration_date;
	}
	public void setRegistration_date(String registration_date) {
		Registration_date = registration_date;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getDate_of_birth() {
		return Date_of_birth;
	}
	public void setDate_of_birth(String date_of_birth) {
		Date_of_birth = date_of_birth;
	}
	

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}



	
	  @Override public String toString() { return "User [User_ID=" + User_ID +
	  ", User_name=" + User_name + ", Email=" + Email + ", Password=" + Password +
	  ", Phone=" + Phone + ", Address=" + Address + ", City=" + City +
	  ", Postal_code=" + Postal_code + ", Country=" + Country +
	  ", Registration_date=" + Registration_date + ", Status=" + Status +
	  ", Date_of_birth=" + Date_of_birth + ", role=" + role + "]"; }
	 
	

}
