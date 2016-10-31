package com.houseservice.controller;

import javax.servlet.http.HttpSession;

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
@RequestMapping(value="user/loginsert",method = RequestMethod.POST)
@ResponseBody
public String AddLog(long hk_user_id, String hk_startdate, long hk_firstcalltime, String hk_callId,HttpSession session)
{
	String user_id = (String) session.getAttribute("Userid");
	hk_user_id=Long.parseLong(user_id);
	
	//Use service to get call id
	String callid = new GenerateCallId().randomAlphaNumericCallId(30);
	hk_callId = callid;
	//Use service to get call id
	session.setAttribute("hk_callId",hk_callId);
    
	try {
    	UsersLog userl = new UsersLog(hk_user_id,hk_startdate,hk_firstcalltime,hk_callId);
    	//returns full inserted record, add return to see
    	Long hk_logid = usersLogRepository.save(userl).id;
    	
    	session.setAttribute("hk_logid",hk_logid);
    	
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
