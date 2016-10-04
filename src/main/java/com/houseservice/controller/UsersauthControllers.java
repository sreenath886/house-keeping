package com.houseservice.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
 public String querybyemail2(String hk_username,String hk_pass,HttpSession session){

    try {
    	String retval = userDao.querybyemail(hk_username,hk_pass);
    	String[] parts = retval.split(",");
    	session.setAttribute("Userid",parts[0]);
    	session.setAttribute("UserName",parts[1]);
    	return "id:"+parts[0]+","+"name:"+parts[1];
    }
    catch (Exception ex) {
    }
	return null;
  }
  
  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  
  // Wire the UserDao used inside this controller.
  @Autowired
  private UsersauthRepository userDao;
  
} // class UserController
