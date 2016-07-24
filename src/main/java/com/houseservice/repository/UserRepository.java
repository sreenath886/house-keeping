package com.houseservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.houseservice.model.User;

public interface UserRepository extends JpaRepository<User,Long> {

}
