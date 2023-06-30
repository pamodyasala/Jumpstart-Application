package com.jumpstart.Jumpstart.Application.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;

@Entity
@Table (name="product")
public class Product {
	
	@Id
    @Column(name="pid")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long pid;

    @Column(name="name")
    private String name;

    @Column(name="price")
    private String price;

    @Column(name="description")
    private String description;
    
    @Column(name="mobileno")
    private String mobileno;


    /*@OneToMany(mappedBy = "product", orphanRemoval=true)
    private Set<Order> biddings = new HashSet<Order>();*/


	public Long getPid() {
		return pid;
	}


	public void setPid(Long pid) {
		this.pid = pid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
	


	public String getMobileno() {
		return mobileno;
	}


	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}


	/*public Set<Order> getBiddings() {
		return biddings;
	}


	public void setBiddings(Set<Order> biddings) {
		this.biddings = biddings;
	}*/
    
    
	
}
