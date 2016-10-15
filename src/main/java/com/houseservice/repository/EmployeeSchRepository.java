package com.houseservice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.houseservice.model.EmployeeTimePool;

@Repository
public interface EmployeeSchRepository extends JpaRepository<EmployeeTimePool,Long> {
//	@Query("select locality from EmployeeTimePool where hk_zone = ?1  ")
//	List <String> querybyemail(String hk_zone);

	@Query("select id,hk_endtime from EmployeeTimePool where hk_date= ?1 and locality = ?2 order by hk_endtime desc ")
	List <EmployeeTimePool> querybyemail(String hk_date,String locality);	
	
}
