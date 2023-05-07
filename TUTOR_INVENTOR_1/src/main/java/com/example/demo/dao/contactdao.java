package com.example.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.contact_form_1;
import com.example.demo.repo.contact_repo;
import com.example.demo.service.contact_form_ser;

@Service
public class contactdao implements contact_form_ser{
	@Autowired
	contact_repo cl;
	
	@Override
	public void contact_for(contact_form_1 c) {
		cl.save(c);
		
	}

	
}
