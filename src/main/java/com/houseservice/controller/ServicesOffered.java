package com.houseservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

//import com.fasterxml.jackson.annotation.JsonProperty;
import com.houseservice.model.Services;
import com.houseservice.repository.ServiceRepository;

@RestController
@RequestMapping("api/v1/")
public class ServicesOffered {
@Autowired	
private ServiceRepository serviceRepository;
@RequestMapping(value = "services",method = RequestMethod.GET)
public List<Services> list(){
	return serviceRepository.findAll();
}

}
