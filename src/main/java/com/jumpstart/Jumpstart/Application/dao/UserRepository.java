package com.jumpstart.Jumpstart.Application.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jumpstart.Jumpstart.Application.bean.User;



@Repository
public interface UserRepository extends JpaRepository<User, Long>  {
	User findByUserName(String name);
	

}
