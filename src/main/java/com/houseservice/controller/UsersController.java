package com.houseservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.houseservice.model.Users;
import com.houseservice.repository.UsersRepository;

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



@RequestMapping(value="specificuserid",method = RequestMethod.GET)
@ResponseBody
public List<Users> querybyemail2(Long hk_phone,String hk_email){
//public String create(@PathVariable String email) {
  try {
  	return usersRepository.querybyphone(hk_phone,hk_email);
  }
  catch (Exception ex) {
   // return "User not found: " + ex.toString();
  }
  //return "User found!";
	return null;
}

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
