package com.houseservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.houseservice.model.Contact;

public interface ContactRepository extends JpaRepository<Contact,Long> {

}
