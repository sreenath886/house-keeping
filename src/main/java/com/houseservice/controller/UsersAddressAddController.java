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



@Controller
@RestController
@RequestMapping("api/v1/")
public class UsersAddressAddController {
@Autowired
private UsersAddressRepository usersAddressRepository ;

//Add user address
@RequestMapping(value="user/addressadd",method = RequestMethod.POST)
@ResponseBody
public String AddAddesss(long hk_user_id, String hk_locality, String hk_address, long hk_housetype,
		long hk_numberhours) {
    try {
    	UsersAddress user = new UsersAddress(hk_user_id,hk_locality,hk_address,hk_housetype,hk_numberhours);
      usersAddressRepository.saveAndFlush(user);
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
    //return "User address added !";
  }


//Add user address







}
