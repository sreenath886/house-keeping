package com.houseservice.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.houseservice.model.Services;
import com.houseservice.model.Contact;
import com.houseservice.repository.ContactRepository;

/**
 * Class UserController
 */
@Controller
@RequestMapping("api/v1/")
public class ContactControllers {


/**
   * Create a new user with an auto-generated id and email and name as passed 
   * values.
   */
  @RequestMapping(value="message/create")
  @ResponseBody
  public String create(String hk_name,String hk_email,String hk_message) {
	  String status="";
    try {
      Contact msg = new Contact(hk_name,hk_email,hk_message);
      userDao.saveAndFlush(msg);
      status = "User succesfully created!";
      return status ;
    }
    catch (Exception ex) {
      return "Error creating the user: " + ex.toString();
    }
    
   
	
  }
  
  /**
   * Delete the user with the passed id.
  
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
   */
  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  
  // Wire the UserDao used inside this controller.
  @Autowired
  private ContactRepository userDao;
  
} // class UserController