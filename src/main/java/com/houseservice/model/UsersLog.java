package com.houseservice.model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "userlog")

public class UsersLog {

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  public long id;
	  
  public long hk_user_id;
  
  private String  hk_startdate;
  
  private long hk_firstcalltime;

  private String  hk_callId;
  
  private int  hk_addonservices;

  private int  hk_userrating;
  
  private int  hk_emprating;
  
  private String  hk_comment;
  
  private int hk_frequency;
  
  
  
  
  // ------------------------
  // PUBLIC METHODS
  // ------------------------


  


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

public String getHk_startdate() {
	return hk_startdate;
}

public void setHk_startdate(String hk_startdate) {
	this.hk_startdate =  hk_startdate;
}

public long getHk_firstcalltime() {
	return hk_firstcalltime;
}

public void setHk_firstcalltime(long hk_firstcalltime) {
	this.hk_firstcalltime = hk_firstcalltime;
}

public String getHk_callId() {
	return hk_callId;
}

public void setHk_callId(String hk_callId) {
	this.hk_callId = hk_callId;
}

public int getHk_addonservices() {
	return hk_addonservices;
}

public void setHk_addonservices(int hk_addonservices) {
	this.hk_addonservices = hk_addonservices;
}

public int getHk_userrating() {
	return hk_userrating;
}

public void setHk_userrating(int hk_userrating) {
	this.hk_userrating = hk_userrating;
}

public int getHk_emprating() {
	return hk_emprating;
}

public void setHk_emprating(int hk_emprating) {
	this.hk_emprating = hk_emprating;
}

public String getHk_comment() {
	return hk_comment;
}

public void setHk_comment(String hk_comment) {
	this.hk_comment = hk_comment;
}




public int getHk_frequency() {
	return hk_frequency;
}

public void setHk_frequency(int hk_frequency) {
	this.hk_frequency = hk_frequency;
}

public UsersLog(long hk_user_id, String hk_startdate, long hk_firstcalltime, String hk_callId) {
	super();
	this.hk_user_id = hk_user_id;
	this.hk_startdate = hk_startdate;
	this.hk_firstcalltime = hk_firstcalltime;
	this.hk_callId = hk_callId;
}

public UsersLog() {
	super();
	// TODO Auto-generated constructor stub
}
  

  
}
