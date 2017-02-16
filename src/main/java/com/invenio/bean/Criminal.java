package com.invenio.bean;

import java.sql.Date;

public class Criminal {


	  
	  private long criminalId,uniqueId;
	 private Date date;
	 private String place,report;
	public long getCriminalId() {
		return criminalId;
	}
	public void setCriminalId(long criminalId) {
		this.criminalId = criminalId;
	}
	public long getUniqueId() {
		return uniqueId;
	}
	public void setUniqueId(long uniqueId) {
		this.uniqueId = uniqueId;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getReport() {
		return report;
	}
	public void setReport(String report) {
		this.report = report;
	}
	@Override
	public String toString() {
		return "Criminal [criminalId=" + criminalId + ", uniqueId=" + uniqueId
				+ ", date=" + date + ", place=" + place + ", report=" + report
				+ "]";
	}
	public Criminal(long criminalId, long uniqueId, Date date, String place,
			String report) {
		super();
		this.criminalId = criminalId;
		this.uniqueId = uniqueId;
		this.date = date;
		this.place = place;
		this.report = report;
	}
	public Criminal() {
		super();
	}
	 
	 
	 
	 
}
