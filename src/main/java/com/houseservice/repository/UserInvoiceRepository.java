package com.houseservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.houseservice.model.Userinvoice;

public interface UserInvoiceRepository extends JpaRepository<Userinvoice,Integer> {

}
