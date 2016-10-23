package com.houseservice.model;

//import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "servicecatalouge")
public class ServiceCatalouge {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int id;
	String hk_servicename;
	int hk_serviceprice;
	int hk_tax;
	int is_main_service;
	
	
	public ServiceCatalouge(int id, String hk_servicename, int hk_serviceprice, int hk_tax, int is_main_service) {
		super();
		this.id = id;
		this.hk_servicename = hk_servicename;
		this.hk_serviceprice = hk_serviceprice;
		this.hk_tax = hk_tax;
		this.is_main_service = is_main_service;
	}
	public int getIs_main_service() {
		return is_main_service;
	}
	public void setIs_main_service(int is_main_service) {
		this.is_main_service = is_main_service;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHk_servicename() {
		return hk_servicename;
	}
	public void setHk_servicename(String hk_servicename) {
		this.hk_servicename = hk_servicename;
	}
	public int getHk_serviceprice() {
		return hk_serviceprice;
	}
	public void setHk_serviceprice(int hk_serviceprice) {
		this.hk_serviceprice = hk_serviceprice;
	}
	public int getHk_tax() {
		return hk_tax;
	}
	public void setHk_tax(int hk_tax) {
		this.hk_tax = hk_tax;
	}
	public ServiceCatalouge(int id, String hk_servicename, int hk_serviceprice, int hk_tax) {
		super();
		this.id = id;
		this.hk_servicename = hk_servicename;
		this.hk_serviceprice = hk_serviceprice;
		this.hk_tax = hk_tax;
	}
	public ServiceCatalouge() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
}