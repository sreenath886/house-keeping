package com.houseservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.houseservice.model.Services;

public interface ServiceRepository extends JpaRepository<Services,Integer> {

}
