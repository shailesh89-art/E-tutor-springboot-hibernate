package com.example.demo.repo;
import com.example.demo.model.parentreg;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository

public interface parent_reg_repo extends JpaRepository<parentreg,Integer> {
	//when username and password same then login
	parentreg findByEmail(String email);
 public long count();

 
	
}
