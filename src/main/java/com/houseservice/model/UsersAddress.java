package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "useraddress")

public class UsersAddress {

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  public long id;
	
  public long hk_user_id;
 
  private long hk_locality;
  
  private String hk_address;

  public long hk_housetype;
  
  public long hk_numberhours;

  
  
  
  
  
  
  
  
  
  
public UsersAddress() {
	super();
	// TODO Auto-generated constructor stub
}

public UsersAddress(long hk_user_id, long hk_locality, String hk_address, long hk_housetype,
		long hk_numberhours) {
	super();
	this.hk_user_id = hk_user_id;
	this.hk_locality = hk_locality;
	this.hk_address = hk_address;
	this.hk_housetype = hk_housetype;
	this.hk_numberhours = hk_numberhours;
}

public long getId() {
	return id;
}

public void setId(long id) {
	this.id = id;
}

public long getHk_user_id() {
	return hk_user_id;
}

public void setHk_user_id(long hk_user_id) {
	this.hk_user_id = hk_user_id;
}

public long getHk_locality() {
	return hk_locality;
}

public void setHk_locality(long hk_locality) {
	this.hk_locality = hk_locality;
}

public String getHk_address() {
	return hk_address;
}

public void setHk_address(String hk_address) {
	this.hk_address = hk_address;
}

public long getHk_housetype() {
	return hk_housetype;
}

public void setHk_housetype(long hk_housetype) {
	this.hk_housetype = hk_housetype;
}

public long getHk_numberhours() {
	return hk_numberhours;
}

public void setHk_numberhours(long hk_numberhours) {
	this.hk_numberhours = hk_numberhours;
}
  
  
  
  
  
}
