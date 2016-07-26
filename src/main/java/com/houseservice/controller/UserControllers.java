package com.houseservice.controller;
<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> e5ec2927cec43235ea0cb7ffb9bd28a9a7b38fad
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.houseservice.model.Services;
import com.houseservice.model.User;
<<<<<<< HEAD
import com.houseservice.model.UserDao;
=======
import com.houseservice.repository.UserRepository;
>>>>>>> e5ec2927cec43235ea0cb7ffb9bd28a9a7b38fad

/**
 * Class UserController
 */
@Controller
@RequestMapping("api/v1/")
public class UserControllers {

<<<<<<< HEAD
  // ------------------------
  // PUBLIC METHODS
  // ------------------------

 // private static final String User = null;
 // private static final List<User>  = null;
=======
>>>>>>> e5ec2927cec43235ea0cb7ffb9bd28a9a7b38fad

/**
   * Create a new user with an auto-generated id and email and name as passed 
   * values.
   */
  @RequestMapping(value="user/create")
  @ResponseBody
  public String create(String email, String name) {
    try {
      User user = new User(email, name);
<<<<<<< HEAD
      userDao.create(user);
=======
      userDao.saveAndFlush(user);
>>>>>>> e5ec2927cec43235ea0cb7ffb9bd28a9a7b38fad
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
  
<<<<<<< HEAD
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

=======
>>>>>>> e5ec2927cec43235ea0cb7ffb9bd28a9a7b38fad
  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  
  // Wire the UserDao used inside this controller.
  @Autowired
<<<<<<< HEAD
  private UserDao userDao;
=======
  private UserRepository userDao;
>>>>>>> e5ec2927cec43235ea0cb7ffb9bd28a9a7b38fad
  
} // class UserController
