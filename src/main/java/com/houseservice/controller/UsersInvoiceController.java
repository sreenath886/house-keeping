package com.houseservice.controller;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.houseservice.model.Userinvoice;
import com.houseservice.repository.UserInvoiceRepository;
//import com.houseservice.service.GenerateCallId;



@Controller
@RestController
@RequestMapping("api/v1/")
public class UsersInvoiceController {
@Autowired
private UserInvoiceRepository userInvoiceRepository ;

//Add user address
@RequestMapping(value="user/invoiceinsert",method = RequestMethod.POST)
@ResponseBody
public String AddLog(long hk_logId, long hk_userId, String hk_invoiceDate, String hk_invoiceTime,int hk_addOnServices,
		int hk_addonAmount,int hk_mainService,int hk_mainAmount,String hk_couponcode,int hk_discount,int hk_tax,int hk_total,
		String hk_paymentType,HttpSession session)
{
	String user_id = (String) session.getAttribute("Userid");
	hk_userId=Long.parseLong(user_id);
	
	hk_logId = (long) session.getAttribute("hk_logid");

    
	try {
		Userinvoice userinv = new Userinvoice(hk_logId,hk_userId,hk_invoiceDate,hk_invoiceTime,hk_addOnServices,
hk_addonAmount,hk_mainService,hk_mainAmount,hk_couponcode,hk_discount,hk_tax,hk_total,hk_paymentType);
		userInvoiceRepository.save(userinv);
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
  }


//Add user address


}
