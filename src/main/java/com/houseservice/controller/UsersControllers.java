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
 * http://localhost:8181/api/v1/users/create?hk_name=vijue&hk_email=viju@vijayd&hk_password=&hk_usertype=1&hk_phone=9972828822
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
  public String create(String hk_name,String hk_email,String hk_password,String hk_usertype,long hk_phone) {
    try {
      Users user = new Users(hk_name,hk_email,hk_password,hk_usertype,hk_phone);
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
