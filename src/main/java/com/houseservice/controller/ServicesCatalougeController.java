package com.houseservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

//import com.fasterxml.jackson.annotation.JsonProperty;
import com.houseservice.model.ServiceCatalouge;
import com.houseservice.repository.ServiceCatalougeRepository;




@RestController
@RequestMapping("api/v1/")
public class ServicesCatalougeController {
@Autowired	
private ServiceCatalougeRepository servicescatalouge;
@RequestMapping(value = "servicescatalouge",method = RequestMethod.GET)
public List<ServiceCatalouge> list(){
	return servicescatalouge.findAll();
}



}
