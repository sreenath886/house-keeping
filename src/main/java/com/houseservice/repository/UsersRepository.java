package com.houseservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.houseservice.model.Users;

public interface UsersRepository extends JpaRepository<Users,Long> {

}
