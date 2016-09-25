package com.houseservice.controller;

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
    }
    catch (Exception ex) {
      return "Error adding address: " + ex.toString();
    }
    return "User address added !";
  }


//Add user address







}
