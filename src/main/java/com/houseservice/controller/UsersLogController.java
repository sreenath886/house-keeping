package com.houseservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.houseservice.model.UsersLog;
import com.houseservice.repository.UsersLogRepository;



@Controller
@RestController
@RequestMapping("api/v1/")
public class UsersLogController {
@Autowired
private UsersLogRepository usersLogRepository ;

//Add user address
@RequestMapping(value="user/log1",method = RequestMethod.POST)
@ResponseBody
public String AddAddesss(Long hk_usr_id,int hk_Frequency,int hk_Hours,String callId) {
    try {
    	UsersLog user = new UsersLog(hk_usr_id,hk_Frequency,hk_Hours,callId);
    	usersLogRepository.saveAndFlush(user);
    }
    catch (Exception ex) {
      return "Error adding Log: " + ex.toString();
    }
    return "User Log added !";
  }


//Add user address







}
