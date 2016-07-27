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
   * /api/v1/message/create?message=hiii
   * values.
   */
  @RequestMapping(value="message/create")
  @ResponseBody
  public String create(String message) {
    String status_text;
	try {
      Contact msg = new Contact(message);
      userDao.saveAndFlush(msg);
      status_text="Success";
    }
    catch (Exception ex) {
      return "Error creating the user: " + ex.toString();
    }
    return status_text;
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
