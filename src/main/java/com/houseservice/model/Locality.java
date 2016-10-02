package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "locality")
public class Locality {
	  @Id
	 // @GeneratedValue(strategy = GenerationType.AUTO)
	  private long hk_LOCALITY_ID;
	  private String hk_ZONE;
	  private String hk_LOCALITY;
	  private int hk_DIST_CENTER;
	  
	  
	
	public long getHk_LOCALITY_ID() {
		return hk_LOCALITY_ID;
	}
	public void setHk_LOCALITY_ID(long hk_LOCALITY_ID) {
		this.hk_LOCALITY_ID = hk_LOCALITY_ID;
	}
	public String getHk_ZONE() {
		return hk_ZONE;
	}
	public void setHk_ZONE(String hk_ZONE) {
		this.hk_ZONE = hk_ZONE;
	}
	public String getHk_LOCALITY() {
		return hk_LOCALITY;
	}
	public void setHk_LOCALITY(String hk_LOCALITY) {
		this.hk_LOCALITY = hk_LOCALITY;
	}
	public int getHk_DIST_CENTER() {
		return hk_DIST_CENTER;
	}
	public void setHk_DIST_CENTER(int hk_DIST_CENTER) {
		this.hk_DIST_CENTER = hk_DIST_CENTER;
	}
	public Locality(long hk_LOCALITY_ID, String hk_ZONE, String hk_LOCALITY, int hk_DIST_CENTER) {
		super();
		this.hk_LOCALITY_ID = hk_LOCALITY_ID;
		this.hk_ZONE = hk_ZONE;
		this.hk_LOCALITY = hk_LOCALITY;
		this.hk_DIST_CENTER = hk_DIST_CENTER;
	}
	public Locality() {
		super();
		// TODO Auto-generated constructor stub
	}
	  

	
	
}
