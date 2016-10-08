package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
@Entity
@Table(name = "users")

public class Users {

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  public long id;
  
  @NotNull
  private String hk_name;
  
  @NotNull
  private String hk_email;


  private String hk_password;
  
  @NotNull
  private String hk_usertype;

  @NotNull
  private long hk_phone;
  
  // ------------------------
  // PUBLIC METHODS
  // ------------------------

public long getId() {
	return id;
}

public void setId(long id) {
	this.id = id;
}


public String gethk_name() {
	return hk_name;
}

@Override
public String toString(){
//	return hk_name;
	return getClass().getSimpleName() + "[name=" + hk_name + "]";
}


public void sethk_name(String hk_name) {
	this.hk_name = hk_name;
}

public String gethk_email() {
	return hk_email;
}

public void sethk_email(String hk_email) {
	this.hk_email = hk_email;
}

public String gethk_password() {
	return hk_password;
}

public void sethk_password(String hk_password) {
	this.hk_password = hk_password;
}

public String gethk_usertype() {
	return hk_usertype;
}

public void sethk_usertype(String hk_usertype) {
	this.hk_usertype = hk_usertype;
}

public long gethk_phone() {
	return hk_phone;
}

public void sethk_phone(long hk_phone) {
	this.hk_phone = hk_phone;
}




public Users() {
	super();
	// TODO Auto-generated constructor stub
}

public Users(String hk_name,long hk_phone,String hk_email, String hk_usertype) {
	super();
	this.hk_name = hk_name;
	this.hk_email = hk_email;
	this.hk_password = hk_password;
	this.hk_usertype = hk_usertype;
	this.hk_phone = hk_phone;
}

public Users(long id) {
	super();
	this.id = id;
}

public Users(String hk_email) {
	super();
	this.hk_email = hk_email;
	
}

public Users(Long hk_phone) {
	super();
	this.hk_phone = hk_phone;
	
}

}