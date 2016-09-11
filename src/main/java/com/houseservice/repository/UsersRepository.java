package com.houseservice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.houseservice.model.Users;

public interface UsersRepository extends JpaRepository<Users,Long> {

	@Query("select id,hk_name from Users u where LOWER(u.hk_phone) = LOWER(:hk_phone) and LOWER(u.hk_email) = LOWER(:hk_email) ")
	List<Users> querybyphone(@Param("hk_phone") Long hk_phone,@Param("hk_email") String hk_email);

}
