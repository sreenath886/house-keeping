package com.houseservice.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USER_DETAILS")
public class Userdetails {
	@Id
	@Column(name="USR_ID")
	Integer USR_ID;
	@Column(name="FIRST_NAME")
	String FIRST_NAME;
	@Column(name="LAST_NAME")
	String LAST_NAME;
	@Column(name="EMAIL")
	String EMAIL;
	@Column(name="PHONE")
	long PHONE;
	@Column(name="LOCALITY")
	String LOCALITY;
	@Column(name="ADDRESS")
	String ADDRESS;
	@Column(name="CREATED_DATE")
	Timestamp CREATED_DATE;
	@Column(name="U_FLAG")
	Integer U_FLAG;
	@Column(name="FREQUENCY")
	Integer FREQUENCY;
	@Column(name="COMMENT")
	String COMMENT;
    
	public Userdetails() { }

	public Integer getUSR_ID() {
		return USR_ID;
	}

	public void setUSR_ID(Integer uSR_ID) {
		USR_ID = uSR_ID;
	}

	public String getFIRST_NAME() {
		return FIRST_NAME;
	}

	public void setFIRST_NAME(String fIRST_NAME) {
		FIRST_NAME = fIRST_NAME;
	}

	public String getLAST_NAME() {
		return LAST_NAME;
	}

	public void setLAST_NAME(String lAST_NAME) {
		LAST_NAME = lAST_NAME;
	}

	public String getEMAIL() {
		return EMAIL;
	}

	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}

	public long getPHONE() {
		return PHONE;
	}

	public void setPHONE(long pHONE) {
		PHONE = pHONE;
	}

	public String getLOCALITY() {
		return LOCALITY;
	}

	public void setLOCALITY(String lOCALITY) {
		LOCALITY = lOCALITY;
	}

	public String getADDRESS() {
		return ADDRESS;
	}

	public void setADDRESS(String aDDRESS) {
		ADDRESS = aDDRESS;
	}

	public Timestamp getCREATED_DATE() {
		return CREATED_DATE;
	}

	public void setCREATED_DATE(Timestamp cREATED_DATE) {
		CREATED_DATE = cREATED_DATE;
	}

	public Integer getU_FLAG() {
		return U_FLAG;
	}

	public void setU_FLAG(Integer u_FLAG) {
		U_FLAG = u_FLAG;
	}

	public Integer getFREQUENCY() {
		return FREQUENCY;
	}

	public void setFREQUENCY(Integer fREQUENCY) {
		FREQUENCY = fREQUENCY;
	}

	public String getCOMMENT() {
		return COMMENT;
	}

	public void setCOMMENT(String cOMMENT) {
		COMMENT = cOMMENT;
	}
	



	public Userdetails(Integer uSR_ID, String fIRST_NAME, String lAST_NAME, String eMAIL, long pHONE, String lOCALITY,
			String aDDRESS, Timestamp cREATED_DATE, Integer u_FLAG, Integer fREQUENCY, String cOMMENT) {
		super();
		USR_ID = uSR_ID;
		FIRST_NAME = fIRST_NAME;
		LAST_NAME = lAST_NAME;
		EMAIL = eMAIL;
		PHONE = pHONE;
		LOCALITY = lOCALITY;
		ADDRESS = aDDRESS;
		CREATED_DATE = cREATED_DATE;
		U_FLAG = u_FLAG;
		FREQUENCY = fREQUENCY;
		COMMENT = cOMMENT;
	}

}