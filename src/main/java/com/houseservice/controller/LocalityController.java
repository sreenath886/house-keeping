package com.houseservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

//import com.fasterxml.jackson.annotation.JsonProperty;
import com.houseservice.model.Locality;
import com.houseservice.repository.LocalityRepository;



@RestController
@RequestMapping("api/v1/")
public class LocalityController {
@Autowired	
private LocalityRepository localityRepository;
@RequestMapping(value = "localities",method = RequestMethod.GET)
public List<Locality> list(){
	return localityRepository.findAll();
}



}
