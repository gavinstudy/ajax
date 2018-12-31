package com.iotek.po;

public class User {
      private String userName;
      private String password;
      private String address;
      public User() {
		// TODO Auto-generated constructor stub
	}
	public User(String userName, String password, String address) {
		super();
		this.userName = userName;
		this.password = password;
		this.address = address;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [userName=" + userName + ", password=" + password
				+ ", address=" + address + "]";
	}
      
}
