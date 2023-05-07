package com.example.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.sendrequest_tutor;
import com.example.demo.repo.request_send_repo;
import com.example.demo.service.request_send_tr;
@Service
public class requestdaotutor implements request_send_tr{
	@Autowired
	request_send_repo lm;
	
	

	@Override
	public List<sendrequest_tutor> getRequestDemosByTutorId(Integer tutorreg_id) {
		// TODO Auto-generated method stub
		return  lm.findByTutorId(tutorreg_id);
	}



	@Override
	public void request_1(sendrequest_tutor reqq) {
		lm.save(reqq);
		
	}

	
	

	

}
