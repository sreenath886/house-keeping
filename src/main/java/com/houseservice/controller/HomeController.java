package com.houseservice.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class HomeController {
@RequestMapping(value = "home", method = RequestMethod.GET)
public String renderHelloWorldView(Model model){
	
	return "index";
	//return "House keeping, is real fun";
}
//@RequestMapping("servicesSS")
//public String servicess(Model model) {
	// List<Services> services = (List<Services>) serviceRepository.findAll();
	
//model.addAttribute("Services", new Services());
	
//return "servicess";
//}

	
}
