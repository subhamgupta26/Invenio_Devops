package com.invenio.bean;

import java.sql.Date;

public class Person {

	private long unique_id;
	private String name;
	private Date dob;
	private long mobile_no;
	private String city,state;
	
	
	public long getUnique_id() {
		return unique_id;
	}
	public void setUnique_id(long unique_id) {
		this.unique_id = unique_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public long getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(long mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Person(long unique_id, String name, Date dob, long mobile_no,
			String city, String state) {
		super();
		this.unique_id = unique_id;
		this.name = name;
		this.dob = dob;
		this.mobile_no = mobile_no;
		this.city = city;
		this.state = state;
	}
	public Person() {
		super();
	}
	@Override
	public String toString() {
		return "Person [unique_id=" + unique_id + ", name=" + name + ", dob="
				+ dob + ", mobile_no=" + mobile_no + ", city=" + city
				+ ", state=" + state + "]";
	}
	
	
	
	
	
}
