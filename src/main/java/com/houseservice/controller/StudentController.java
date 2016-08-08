package com.houseservice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.houseservice.model.Student;
import com.houseservice.repository.StudentRepository;

@Controller
public class StudentController {
	@Autowired
    private StudentRepository repository; 
	
	@RequestMapping("/")
	public String index(Model model) {
		 List<Student> students = (List<Student>) repository.findAll();
		
		model.addAttribute("students", students);
		
    	return "index";
    }

    @RequestMapping(value = "add")
    public String addStudent(Model model){
    	model.addAttribute("student", new Student());
        return "addStudent";
    }	
    @RequestMapping(value = "about")
    public String about(Model model){
    	model.addAttribute("student", new Student());
        return "about";
    }	
	
    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(Student student){
        repository.save(student);
    	return "redirect:/";
    }
    
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String editRemoveEmployee(@PathVariable("id") Long studentId, Model model) {
    	repository.delete(studentId);
        return "redirect:/";
    }    
}
