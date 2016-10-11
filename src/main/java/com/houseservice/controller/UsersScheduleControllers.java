package com.houseservice.controller;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.houseservice.repository.EmployeeSchRepository;

/**
 * Class UserController
 */
@Controller
@RequestMapping("api/v1/")
public class UsersScheduleControllers {

  @RequestMapping(value="empschedule",method = RequestMethod.GET)
  @ResponseBody
 public List<String> getSchedule(){

    try {
    	List<String> retval = userDao.querybyemail();

        return retval;    
    }
    catch (Exception ex) {

        return null;
    	//    	return (Collections.singletonMap("response", 1)).toString();
    }
	//return null;
  }

  
  // Wire the UserDao used inside this controller.
  @Autowired
  private EmployeeSchRepository userDao;

} // class UserController










