package com.houseservice.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
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
  private long id;
  
  @NotNull
  private String name;
  
  @NotNull
  private String email;

  @NotNull
  private String password;
  
  @NotNull
  private String usertype;
  // ------------------------
  // PUBLIC METHODS
  // ------------------------

public long getId() {
	return id;
}

public void setId(long id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getUsertype() {
	return usertype;
}

public void setUsertype(String usertype) {
	this.usertype = usertype;
}

public Users() {
	super();
	// TODO Auto-generated constructor stub
}

public Users(String name, String email, String password, String usertype) {
	super();
	this.name = name;
	this.email = email;
	this.password = password;
	this.usertype = usertype;
}

public Users(long id) {
	super();
	this.id = id;
}

public Users(String email) {
	super();
	this.email = email;
	
}

}
