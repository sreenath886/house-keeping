package com.houseservice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

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
@RequestMapping(value="user/addressadd",method = RequestMethod.POST)
@ResponseBody
public String AddAddessLog(long hk_user_id, long hk_locality, String hk_address, long hk_housetype,
		long hk_numberhours,HttpSession session) {
	String user_id = (String) session.getAttribute("Userid");
	hk_user_id=Long.parseLong(user_id);
	
    try {
    	UsersAddress user = new UsersAddress(hk_user_id,hk_locality,hk_address,hk_housetype,hk_numberhours);
        usersAddressRepository.saveAndFlush(user);
    	String callid = new GenerateCallId().randomAlphaNumericCallId(30);
  	    JSONObject json = new JSONObject();
  	    json.put("response", "0"); //0 is success
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




//Show user address
@RequestMapping(value="user/addressshow",method = RequestMethod.GET)
public String list(long hk_user_id,HttpSession session){
	JSONObject json = new JSONObject();
    String st2 =null ;
    String userid = (String) session.getAttribute("Userid");
    hk_user_id =  Long.parseLong(userid,10);
    
    try{
	for (String str: usersAddressRepository.querybyhk_user_id(hk_user_id)) {           
        //Do your stuff here
		String[] parts = str.split(",");
		json.put("id", parts[0]);
		json.put("hk_locality", parts[1]);
		json.put("hk_address", parts[2]);
		json.put("hk_housetype", parts[3]);
        String st1 = (json).toString();
        st2 = st2+","+st1;
    }
	st2 = st2.substring(5);
	return (st2).toString();


}
catch (Exception ex) {
  	JSONObject json2 = new JSONObject();
  	json.put("response", "1"); //1 is error
    return (json).toString();
  //return "Error adding address: " + ex.toString();
}
}
  //vj
  //return "User address added !";











}
