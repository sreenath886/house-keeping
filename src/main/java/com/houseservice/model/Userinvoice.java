package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
@Entity
@Table(name = "userinvoice")
public class Userinvoice {

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  public long id;
  
  @NotNull
  private long hk_logId;
  
  @NotNull
  private long hk_userId;
  
  @NotNull
  private String hk_invoiceDate;
  
  @NotNull  
  private String hk_invoiceTime;
  
  private long hk_addOnServices;
  
  private long hk_addonAmount;
  
  private long hk_mainService;
  
  private long hk_mainAmount;
  
  private String hk_couponcode;
  
  private long hk_discount;
  
  private long hk_tax;
  
  private long hk_total;
  
  private String hk_paymentType;

  // ------------------------
  // PUBLIC METHODS
  // ------------------------

public Userinvoice(long id) {
	this.id = id;
}

public long getId() {
	return id;
}

public void setId(long id) {
	this.id = id;
}

public long getHk_logId() {
	return hk_logId;
}

public void setHk_logId(long hk_logId) {
	this.hk_logId = hk_logId;
}

public long getHk_userId() {
	return hk_userId;
}

public void setHk_userId(long hk_userId) {
	this.hk_userId = hk_userId;
}


public long getHk_mainAmount() {
	return hk_mainAmount;
}

public void setHk_mainAmount(long hk_mainAmount) {
	this.hk_mainAmount = hk_mainAmount;
}

public String getHk_invoiceDate() {
	return hk_invoiceDate;
}

public void setHk_invoiceDate(String hk_invoiceDate) {
	this.hk_invoiceDate = hk_invoiceDate;
}

public String getHk_invoiceTime() {
	return hk_invoiceTime;
}

public void setHk_invoiceTime(String hk_invoiceTime) {
	this.hk_invoiceTime = hk_invoiceTime;
}

public long getHk_addOnServices() {
	return hk_addOnServices;
}

public void setHk_addOnServices(long hk_addOnServices) {
	this.hk_addOnServices = hk_addOnServices;
}

public long getHk_addonAmount() {
	return hk_addonAmount;
}

public void setHk_addonAmount(long hk_addonAmount) {
	this.hk_addonAmount = hk_addonAmount;
}

public long getHk_mainService() {
	return hk_mainService;
}

public void setHk_mainService(long hk_mainService) {
	this.hk_mainService = hk_mainService;
}

public String getHk_couponcode() {
	return hk_couponcode;
}

public void setHk_couponcode(String hk_couponcode) {
	this.hk_couponcode = hk_couponcode;
}

public long getHk_discount() {
	return hk_discount;
}

public void setHk_discount(long hk_discount) {
	this.hk_discount = hk_discount;
}

public long getHk_tax() {
	return hk_tax;
}

public void setHk_tax(long hk_tax) {
	this.hk_tax = hk_tax;
}

public long getHk_total() {
	return hk_total;
}

public void setHk_total(long hk_total) {
	this.hk_total = hk_total;
}

public String getHk_paymentType() {
	return hk_paymentType;
}

public void setHk_paymentType(String hk_paymentType) {
	this.hk_paymentType = hk_paymentType;
}

public Userinvoice(long hk_logId, long hk_userId, String hk_invoiceDate, String hk_invoiceTime,
		long hk_addOnServices, long hk_addonAmount, long hk_mainService,long hk_mainAmount, 
		String hk_couponcode, long hk_discount, long hk_tax,
		long hk_total, String hk_paymentType) {
	super();
	this.hk_logId = hk_logId;
	this.hk_userId = hk_userId;
	this.hk_invoiceDate = hk_invoiceDate;
	this.hk_invoiceTime = hk_invoiceTime;
	this.hk_addOnServices = hk_addOnServices;
	this.hk_addonAmount = hk_addonAmount;
	this.hk_mainService = hk_mainService;
	this.hk_mainAmount = hk_mainAmount;
	this.hk_couponcode = hk_couponcode;
	this.hk_discount = hk_discount;
	this.hk_tax = hk_tax;
	this.hk_total = hk_total;
	this.hk_paymentType = hk_paymentType;
}


public Userinvoice() { }





}