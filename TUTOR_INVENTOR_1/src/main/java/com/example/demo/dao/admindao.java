package com.example.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.admin;
import com.example.demo.repo.admin_repo;
import com.example.demo.service.admin_ser;

@Service
public class admindao implements admin_ser {
	@Autowired
	admin_repo ar;
	
	@Override
	
	public admin log(String email, String pass) {
		
		admin ad=	ar.findByemail(email);
		if (ad==null ||!ad.getPass().equals(pass)) {
			throw new IllegalArgumentException("invalid");
			
			
		}
			
			
			return ad;
		}
	}


