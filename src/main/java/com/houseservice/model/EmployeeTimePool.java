package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "employeeTimePool")

public class EmployeeTimePool {

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  public long id;
  private long empId;
  private String locality;
  private String hk_date;
  private String hk_starttime;
  private String hk_endtime;
  private String hk_callid;
  private String hk_zone;
  private int hk_emprating;
  private String flag;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public long getEmpId() {
	return empId;
}
public void setEmpId(long empId) {
	this.empId = empId;
}
public String getLocality() {
	return locality;
}
public void setLocality(String locality) {
	this.locality = locality;
}
public String getHk_date() {
	return hk_date;
}
public void setHk_date(String hk_date) {
	this.hk_date = hk_date;
}
public String getHk_starttime() {
	return hk_starttime;
}
public void setHk_starttime(String hk_starttime) {
	this.hk_starttime = hk_starttime;
}
public String getHk_endtime() {
	return hk_endtime;
}
public void setHk_endtime(String hk_endtime) {
	this.hk_endtime = hk_endtime;
}
public String getHk_callid() {
	return hk_callid;
}
public void setHk_callid(String hk_callid) {
	this.hk_callid = hk_callid;
}
public String getHk_zone() {
	return hk_zone;
}
public void setHk_zone(String hk_zone) {
	this.hk_zone = hk_zone;
}
public int getHk_emprating() {
	return hk_emprating;
}
public void setHk_emprating(int hk_emprating) {
	this.hk_emprating = hk_emprating;
}
public String getFlag() {
	return flag;
}
public void setFlag(String flag) {
	this.flag = flag;
}
public EmployeeTimePool(long id, long empId, String locality, String hk_date, String hk_starttime, String hk_endtime,
		String hk_callid, String hk_zone, int hk_emprating, String flag) {
	super();
	this.id = id;
	this.empId = empId;
	this.locality = locality;
	this.hk_date = hk_date;
	this.hk_starttime = hk_starttime;
	this.hk_endtime = hk_endtime;
	this.hk_callid = hk_callid;
	this.hk_zone = hk_zone;
	this.hk_emprating = hk_emprating;
	this.flag = flag;
}
public EmployeeTimePool() {
	super();
	// TODO Auto-generated constructor stub
}
 
  
  
  
  

}