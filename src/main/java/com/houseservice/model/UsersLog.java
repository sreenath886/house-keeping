package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
@Entity
@Table(name = "user_log")

public class UsersLog {

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  public long id;
	  
  @NotNull
  public long hk_usr_id;
  
  @NotNull
  private int hk_Frequency;
  
  @NotNull
  private int  hk_Hours;

  private int  extraServices;
  
  private String  couponCode;

  @NotNull
  private String  callId;
  
  private int  ratingUser;
  
  private int  ratingStaff;

  private String comment;

  
  
  // ------------------------
  // PUBLIC METHODS
  // ------------------------

  
  
public long getHk_usr_id() {
	return hk_usr_id;
}

public void setHk_usr_id(long hk_usr_id) {
	this.hk_usr_id = hk_usr_id;
}

public int getHk_Frequency() {
	return hk_Frequency;
}

public void setHk_Frequency(int hk_Frequency) {
	this.hk_Frequency = hk_Frequency;
}

public int getHk_Hours() {
	return hk_Hours;
}

public void setHk_Hours(int hk_Hours) {
	this.hk_Hours = hk_Hours;
}

public int getExtraServices() {
	return extraServices;
}

public void setExtraServices(int extraServices) {
	this.extraServices = extraServices;
}

public String getCouponCode() {
	return couponCode;
}

public void setCouponCode(String couponCode) {
	this.couponCode = couponCode;
}

public String getCallId() {
	return callId;
}

public void setCallId(String callId) {
	this.callId = callId;
}

public int getRatingUser() {
	return ratingUser;
}

public void setRatingUser(int ratingUser) {
	this.ratingUser = ratingUser;
}

public int getRatingStaff() {
	return ratingStaff;
}

public void setRatingStaff(int ratingStaff) {
	this.ratingStaff = ratingStaff;
}

public String getComment() {
	return comment;
}

public void setComment(String comment) {
	this.comment = comment;
}

public UsersLog(long hk_usr_id, int hk_Frequency, int hk_Hours, String callId) {
	super();
	this.hk_usr_id = hk_usr_id;
	this.hk_Frequency = hk_Frequency;
	this.hk_Hours = hk_Hours;
	this.extraServices = extraServices;
	this.couponCode = couponCode;
	this.callId = callId;
	this.ratingUser = ratingUser;
	this.ratingStaff = ratingStaff;
	this.comment = comment;
}

public UsersLog() {
	super();
	// TODO Auto-generated constructor stub
}


  

 
  
}
