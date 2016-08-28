package com.houseservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.houseservice.model.Locality;

public interface LocalityRepository extends JpaRepository<Locality,Long> {

}
