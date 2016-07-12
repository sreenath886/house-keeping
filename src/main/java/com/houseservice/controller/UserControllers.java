package com.houseservice.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.houseservice.model.Services;
import com.houseservice.model.User;
import com.houseservice.model.UserDao;

/**
 * Class UserController
 */
@Controller
@RequestMapping("api/v1/")
public class UserControllers {

  // ------------------------
  // PUBLIC METHODS
  // ------------------------

 // private static final String User = null;
 // private static final List<User>  = null;

/**
   * Create a new user with an auto-generated id and email and name as passed 
   * values.
   */
  @RequestMapping(value="user/create")
  @ResponseBody
  public String create(String email, String name) {
    try {
      User user = new User(email, name);
      userDao.create(user);
    }
    catch (Exception ex) {
      return "Error creating the user: " + ex.toString();
    }
    return "User succesfully created!";
  }
  
  /**
   * Delete the user with the passed id.
   */
  @RequestMapping(value="user/delete")
  @ResponseBody
  public String delete(long id) {
    try {
      User user = new User(id);
      userDao.delete(user);
    }
    catch (Exception ex) {
      return "Error deleting the user: " + ex.toString();
    }
    return "User succesfully deleted!";
  }
  
  /**
   * Retrieve the id for the user with the passed email address.
   */
  @RequestMapping(value="user/get-by-email")
  @ResponseBody
  public String getByEmail(String email) {
    String userId;
    try {
      User user = userDao.getByEmail(email);
      userId = String.valueOf(user.getId());
    }
    catch (Exception ex) {
      return "User not found: " + ex.toString();
    }
    return "The user id is: " + userId;
  }
  
  /**
   * Update the email and the name for the user indentified by the passed id.
   */
  @RequestMapping(value="user/update")
  @ResponseBody
  public String updateName(long id, String email, String name) {
    try {
      User user = userDao.getById(id);
      user.setEmail(email);
      user.setName(name);
      userDao.update(user);
    }
    catch (Exception ex) {
      return "Error updating the user: " + ex.toString();
    }
    return "User succesfully updated!";
  } 

  /**
   * Update the email and the name for the user indentified by the passed id.
   */
  @RequestMapping(value="user")
  @ResponseBody
  public List<User> getAll() {
    try {     
      
    	return  userDao.getAll();
    }
    catch (Exception ex) {
      //return "Error Getting the user";
    	return null;
    }
	//return User;
	
   
  } 

  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  
  // Wire the UserDao used inside this controller.
  @Autowired
  private UserDao userDao;
  
} // class UserController
