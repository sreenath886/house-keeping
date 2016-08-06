package com.houseservice.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.houseservice.model.Users;
import com.houseservice.repository.UsersauthRepository;

/**
 * Class UserController
 */
@Controller
@RequestMapping("api/v1/")
public class UsersauthControllers {


/**
   * Create a new user with an auto-generated id and email and name as passed 
   * values.
   */
	
  @RequestMapping(value="usersauth",method = RequestMethod.POST)
  @ResponseBody
 public List<Users> querybyemail2(String email){
//  public String create(@PathVariable String email) {
    try {
    	return userDao.querybyemail(email);
    }
    catch (Exception ex) {
     // return "User not found: " + ex.toString();
    }
    //return "User found!";
	return null;
  }
  
  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  
  // Wire the UserDao used inside this controller.
  @Autowired
  private UsersauthRepository userDao;
  
} // class UserController
