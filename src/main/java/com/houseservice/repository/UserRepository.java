package com.houseservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.houseservice.model.Userdetails;

public interface UserRepository extends JpaRepository<Userdetails,Integer> {

}
