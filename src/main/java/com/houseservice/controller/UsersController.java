package com.houseservice.controller;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.houseservice.model.Users;
import com.houseservice.repository.UsersRepository;


// LIST ALL USERS
@Controller
@RestController
@RequestMapping("api/v1/")
public class UsersController {
@Autowired
private UsersRepository usersRepository ;

@RequestMapping(value = "userslist",method = RequestMethod.GET)
public List<Users> list1(){
	return usersRepository.findAll();
}


// GET USER  AND ID
@RequestMapping(value="specificuserid",method = RequestMethod.GET)
@ResponseBody
public Long querybyemail2(Long hk_phone,String hk_email){
  try {
	  List<Long> response1 =  usersRepository.querybyphone(hk_phone,hk_email); 
	  return response1.get(0);
    //return response1;

  }
  catch (Exception ex) {
   // return "User not found: " + ex.toString();
  }
  //return "User found!";
	return null;
}




/*
// GET USER NAME AND ID
@RequestMapping(value="specificuserid",method = RequestMethod.GET)
@ResponseBody
public String querybyemail2(Long hk_phone,String hk_email){
  try {
	  String response1 =  usersRepository.querybyphone(hk_phone,hk_email);
	  
//    System.out.println("ID1 IS " + response1.);
  //  System.out.println("ID2 IS " + response1.get(1));
    return response1;

  }
  catch (Exception ex) {
    return "User not found: " + ex.toString();
  }
  //return "User found!";

}

*/






//ADD A NEW USER
@RequestMapping(value="user/create",method = RequestMethod.POST)
@ResponseBody
public String create(String hk_name,String hk_email,String hk_password,String hk_usertype,long hk_phone) {
    try {
      Users user = new Users(hk_name,hk_email,hk_password,hk_usertype,hk_phone);
      usersRepository.saveAndFlush(user);
    }
    catch (Exception ex) {
      return "Error creating the user: " + ex.toString();
    }
    return "User succesfully created!";
  }


//DELETE A USER

@RequestMapping(value="user/delete",method = RequestMethod.POST)
@ResponseBody
public String delete(long id) {
    try {
        Users user = new Users(id);
        usersRepository.delete(user);
    }
    catch (Exception ex) {
      return "Error deleting the user: " + ex.toString();
    }
    return "User succesfully deleted!";
  }










}
