package com.houseservice.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.houseservice.model.UsersAddress;;

public interface UsersAddressRepository extends JpaRepository<UsersAddress,Long> {
	
	//public List<UsersAddress> findByHk_user_id(long hk_user_id);
	@Query("select id,hk_locality,hk_address,hk_housetype from UsersAddress u where LOWER(u.hk_user_id) = LOWER(:hk_user_id) ")
	String [] querybyhk_user_id(@Param("hk_user_id") long hk_user_id);


}



/*
package com.houseservice.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.houseservice.model.Users;

public interface UsersRepository extends JpaRepository<Users,Long> {

	@Query("select id,hk_name from Users u where LOWER(u.hk_phone) = LOWER(:hk_phone) and LOWER(u.hk_email) = LOWER(:hk_email) ")
	String querybyphone(@Param("hk_phone") Long hk_phone,@Param("hk_email") String hk_email);

}

*/