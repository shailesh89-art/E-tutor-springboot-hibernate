package com.example.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.sendrequest_tutor;
@Repository
public interface request_send_repo extends JpaRepository<sendrequest_tutor, Integer>  {
	List<sendrequest_tutor>findByTutorId(Integer tutorreg_id);
}
