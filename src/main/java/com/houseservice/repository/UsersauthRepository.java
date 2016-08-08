package com.houseservice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.houseservice.model.Users;

@Repository
public interface UsersauthRepository extends JpaRepository<Users,Long> {
	@Query("select id from Users u where LOWER(u.email) = LOWER(:email) and LOWER(u.password) = LOWER(:password)")
	List<Users> querybyemail(@Param("email") String email,@Param("password") String password);

}
