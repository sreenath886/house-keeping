package com.houseservice.controller;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.houseservice.model.UsersAddress;
import com.houseservice.repository.UsersAddressRepository;
import com.houseservice.repository.UsersLogRepository;
import com.houseservice.service.GenerateCallId;



@Controller
@RestController
@RequestMapping("api/v1/")
public class UsersAddressAddController {
@Autowired
private UsersAddressRepository usersAddressRepository ;
private UsersLogRepository usersLogRepository;

//Add user address
@RequestMapping(value="user/addaddresslog",method = RequestMethod.POST)
@ResponseBody
public String AddAddessLog(long hk_user_id, long hk_locality, String hk_address, long hk_housetype,
		long hk_numberhours,String hk_startdate, long hk_firstcalltime, String hk_callId) {
    try {
    	UsersAddress user = new UsersAddress(hk_user_id,hk_locality,hk_address,hk_housetype,hk_numberhours);
        usersAddressRepository.saveAndFlush(user);
        //vj
//        UsersLogController().AddLog(UsersLog,redirectattributes);

    	//String callid = new GenerateCallId().randomAlphaNumericCallId(30);
    	//hk_callId = callid;
        String userlog = new UsersLogController().AddLog(hk_user_id,hk_startdate,hk_firstcalltime,hk_callId);
        System.out.println(userlog + "response from user log cont");
        //vj
  	    JSONObject json = new JSONObject();
  	    json.put("response", "0"); //0 is success
  
  //	    return "redirect:user/log1";
 	    return (json).toString();
    }
    catch (Exception ex) {
      	JSONObject json = new JSONObject();
      	json.put("response", "1"); //1 is error
        return (json).toString();
      //return "Error adding address: " + ex.toString();
    }

    //vj
    //vj
    //return "User address added !";
  }


//Add user address







}
