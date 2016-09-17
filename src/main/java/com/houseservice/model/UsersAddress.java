package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
@Entity
@Table(name = "user_address")

public class UsersAddress {

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  @Id
  public long hk_usr_id;
  
  @NotNull
  private String hk_Address;
  
  @NotNull
  private String hk_HouseType;

public long getHk_usr_id() {
	return hk_usr_id;
}

public void setHk_usr_id(long hk_usr_id) {
	this.hk_usr_id = hk_usr_id;
}

public String getHk_Address() {
	return hk_Address;
}

public void setHk_Address(String hk_Address) {
	this.hk_Address = hk_Address;
}

public String getHk_HouseType() {
	return hk_HouseType;
}

public void setHk_HouseType(String hk_HouseType) {
	this.hk_HouseType = hk_HouseType;
}

public UsersAddress(long hk_usr_id, String hk_Address, String hk_HouseType) {
	super();
	this.hk_usr_id = hk_usr_id;
	this.hk_Address = hk_Address;
	this.hk_HouseType = hk_HouseType;
}

public UsersAddress() {
	super();
	// TODO Auto-generated constructor stub
}
  
  // ------------------------
  // PUBLIC METHODS
  // ------------------------

}
