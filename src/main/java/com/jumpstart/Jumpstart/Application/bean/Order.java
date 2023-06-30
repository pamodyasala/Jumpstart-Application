package com.jumpstart.Jumpstart.Application.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Order {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long OId;
	private int Pid;
	private String Name;
	private java.sql.Date Date;
	private int mobileno;
	
	public Order() {
		
	}
	@Override
	public String toString() {
		return "Job [OId=" + OId + ", Pid=" + Pid + ", Name=" + Name + ", Date=" + Date
				+ ", mobileno=" + mobileno + "]";
	}

	

	public Order(Long oId, int pid, String name, java.sql.Date date, int mobileno) {
		super();
		OId = oId;
		Pid = pid;
		Name = name;
		Date = date;
		this.mobileno = mobileno;
	}
	public Long getOId() {
		return OId;
	}

	public void setOId(Long oId) {
		OId = oId;
	}

	public int getPid() {
		return Pid;
	}

	public void setPid(int pid) {
		Pid = pid;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	

	public java.sql.Date getDate() {
		return Date;
	}
	public void setDate(java.sql.Date date) {
		Date = date;
	}
	public int getMobileno() {
		return mobileno;
	}

	public void setMobileno(int mobileno) {
		this.mobileno = mobileno;
	}
	
	
	
	

}
