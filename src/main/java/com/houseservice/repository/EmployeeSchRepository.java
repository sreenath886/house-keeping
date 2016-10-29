package com.houseservice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.houseservice.model.EmployeeTimePool;

@Repository
public interface EmployeeSchRepository extends JpaRepository<EmployeeTimePool,Long> {
//not in use
	//@Query("CALL GetAvailableTime(?1,?2) "
	//		+ "    ")
//	List <EmployeeTimePool> queryfortime(String hk_date,String hk_zone);	
	
	

	
}
