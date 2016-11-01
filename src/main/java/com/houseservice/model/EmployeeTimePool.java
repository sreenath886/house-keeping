package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Table;


@Entity
@Table(name = "employeeTimePool")


//not in use
@NamedNativeQueries({
    @NamedNativeQuery(
            name    =   "getAvailableTime",
            query   =   "select A.hk_starttime,CASE WHEN B.AVAILABLE ='0' THEN '0' ELSE '1' END AS AVAILABLE FROM EmployeeTimePool A LEFT JOIN (SELECT DISTINCT hk_starttime,0 AS AVAILABLE FROM  EmployeeTimePool B " +
                        "WHERE B.hk_zone= ?2 and B.hk_date= ?1 AND B.hk_callid = '0') B ON A.hk_starttime = B.hk_starttime WHERE A.hk_zone= ?2 and A.hk_date= ?1 group by A.hk_starttime ",
                        resultClass=EmployeeTimePool.class
    )})







public class EmployeeTimePool {

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  public long hk_pid;
  private String hk_date;
  private String hk_callid;
  private String hk_headstaff;
  private int hk_starttime;
  private String hk_zone;
  private int hk_empidA;
  private int hk_empidB;
  private int flag;
  

  
  
  
public long getHk_pid() {
	return hk_pid;
}
public void setHk_pid(long hk_pid) {
	this.hk_pid = hk_pid;
}
public String getHk_date() {
	return hk_date;
}
public void setHk_date(String hk_date) {
	this.hk_date = hk_date;
}
public String getHk_callid() {
	return hk_callid;
}
public void setHk_callid(String hk_callid) {
	this.hk_callid = hk_callid;
}
public String getHk_headstaff() {
	return hk_headstaff;
}
public void setHk_headstaff(String hk_headstaff) {
	this.hk_headstaff = hk_headstaff;
}
public int getHk_starttime() {
	return hk_starttime;
}
public void setHk_starttime(int hk_starttime) {
	this.hk_starttime = hk_starttime;
}
public String getHk_zone() {
	return hk_zone;
}
public void setHk_zone(String hk_zone) {
	this.hk_zone = hk_zone;
}
public int getHk_empidA() {
	return hk_empidA;
}
public void setHk_empidA(int hk_empidA) {
	this.hk_empidA = hk_empidA;
}
public int getHk_empidB() {
	return hk_empidB;
}
public void setHk_empidB(int hk_empidB) {
	this.hk_empidB = hk_empidB;
}
public int getFlag() {
	return flag;
}
public void setFlag(int flag) {
	this.flag = flag;
}
public EmployeeTimePool(long id, String hk_date, String hk_callid, String hk_headstaff, int hk_starttime,
		String hk_zone, int hk_empidA, int hk_empidB, int flag) {
	super();
	this.hk_pid = hk_pid;
	this.hk_date = hk_date;
	this.hk_callid = hk_callid;
	this.hk_headstaff = hk_headstaff;
	this.hk_starttime = hk_starttime;
	this.hk_zone = hk_zone;
	this.hk_empidA = hk_empidA;
	this.hk_empidB = hk_empidB;
	this.flag = flag;
}
public EmployeeTimePool() {
	super();
	// TODO Auto-generated constructor stub
}
  
public void getAvailableTime(){

}
  
  
  
  

}