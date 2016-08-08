package com.houseservice.repository;

import java.util.List;
import com.houseservice.model.Student;

import org.springframework.data.repository.CrudRepository;

public interface StudentRepository extends CrudRepository<Student, Long> {

    List<Student> findByLastName(String lastname);
    
}
