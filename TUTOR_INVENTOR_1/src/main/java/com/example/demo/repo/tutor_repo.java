package com.example.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.parentreg;
import com.example.demo.model.tutorreg;
@Repository

public interface tutor_repo extends JpaRepository<tutorreg, Integer>
{

	tutorreg findByEmail(String email);
	long count();
	List<tutorreg> findAllByStateAndCity(String state, String city);

	

}
