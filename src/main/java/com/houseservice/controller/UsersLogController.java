package com.houseservice.controller;

import java.text.DateFormat;
import java.time.LocalTime;
import java.util.Date;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.houseservice.model.UsersLog;
import com.houseservice.repository.UsersLogRepository;
import com.houseservice.service.GenerateCallId;



@Controller
@RestController
@RequestMapping("api/v1/")
public class UsersLogController {
@Autowired
private UsersLogRepository usersLogRepository ;

//Add user address
@RequestMapping(value="user/log1",method = RequestMethod.POST)
@ResponseBody
public String AddLog(long hk_user_id, String hk_startdate, long hk_firstcalltime, String hk_callId) {
	//Use service to get call id
	String callid = new GenerateCallId().randomAlphaNumericCallId(30);
	hk_callId = callid;
	//Use service to get call id
    try {
    	UsersLog userl = new UsersLog(hk_user_id,hk_startdate,hk_firstcalltime,hk_callId);
    	//System.out.println(hk_user_id + " = "+ hk_startdate+ " = "+ hk_firstcalltime+" = "+hk_callId);
    	usersLogRepository.save(userl);
      	JSONObject json = new JSONObject();
      	json.put("response", "0"); //0 is success
        return (json).toString();
    }
    catch (Exception ex) {
      	JSONObject json = new JSONObject();
      	json.put("response", "1"); //1 is error
      	System.out.println(ex + " errrror");
        return (json).toString();
    }
   // return "User Log added !";
  }


//Add user address







}
