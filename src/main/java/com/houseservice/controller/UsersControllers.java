package com.houseservice.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

//import com.houseservice.model.Services;
import com.houseservice.model.Users;
import com.houseservice.repository.UsersRepository;

/**
 * Class UserController
 */
@Controller
@RequestMapping("api/v1/")
public class UsersControllers {


/**
   * Create a new user with an auto-generated id and email and name as passed 
   * values.
   */
  @RequestMapping(value="users/create")
  @ResponseBody
  public String create(String name,String email,String password,String usertype) {
    try {
      Users user = new Users(name,email,password,usertype);
      userDao.saveAndFlush(user);
    }
    catch (Exception ex) {
      return "Error creating the user: " + ex.toString();
    }
    return "User succesfully created!";
  }
  
  /**
   * Delete the user with the passed id.
   */
  @RequestMapping(value="users/delete")
  @ResponseBody
  public String delete(long id) {
    try {
      Users user = new Users(id);
      userDao.delete(user);
    }
    catch (Exception ex) {
      return "Error deleting the user: " + ex.toString();
    }
    return "User succesfully deleted!";
  }
  
  // ------------------------
  // PRIVATE FIELDS
  // ------------------------
  
  // Wire the UserDao used inside this controller.
  @Autowired
  private UsersRepository userDao;
  
} // class UserController
