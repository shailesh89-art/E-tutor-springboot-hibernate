package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.admin;

@Repository
public interface admin_repo extends JpaRepository<admin, Integer> {

	public admin findByemail(String email);
	

}
