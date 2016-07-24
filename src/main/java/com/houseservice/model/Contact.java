package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
@Entity
@Table(name = "contact")
public class Contact {

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  
  @Id
  @GeneratedValue(strategy = GenerationType.AUTO)
  private long id;
  
  @NotNull
  private String message;

  // ------------------------
  // PUBLIC METHODS
  // ------------------------
  
public Contact() { }

public Contact(long id) {
	this.id = id;
}
public Contact(String message) {
	this.message = message;
}


public long getId() {
	return id;
}

public void setId(long id) {
	this.id = id;
}

public String getMessage() {
	return message;
}

public void setMessage(String message) {
	this.message = message;
}

}
