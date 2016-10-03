package com.houseservice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.houseservice.model.Users;

@Repository
public interface UsersauthRepository extends JpaRepository<Users,Long> {
	@Query("select id,hk_name,hk_email from Users u where LOWER(u.hk_email) = LOWER(:hk_email) and LOWER(u.hk_password) = LOWER(:hk_password)")
	String querybyemail(@Param("hk_email") String hk_email,@Param("hk_password") String hk_password);

}
