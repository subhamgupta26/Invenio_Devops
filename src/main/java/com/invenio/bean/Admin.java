package com.invenio.bean;

import org.springframework.stereotype.Component;
 

public class Admin {
	private String username;
	private String password;
	
	public Admin() {
		super();
	}
	
	public Admin(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Person [username=" + username + ", password=" + password + "]";
	}
}
