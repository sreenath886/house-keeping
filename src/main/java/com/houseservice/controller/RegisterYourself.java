package com.houseservice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.houseservice.model.Userdetails;
import com.houseservice.repository.UserRepository;

@RestController
@RequestMapping("/")
public class RegisterYourself {
@Autowired	
@RequestMapping(value="registeruser", method=RequestMethod.GET)
public String greetingForm(Model model) {
    model.addAttribute("greeting", new Userdetails());
    return "greeting";
}

@RequestMapping(value="registeruser", method=RequestMethod.POST)
public String greetingSubmit(@ModelAttribute Userdetails greeting, Model model) {
    model.addAttribute("greeting", greeting);
    return "result";
}
}
