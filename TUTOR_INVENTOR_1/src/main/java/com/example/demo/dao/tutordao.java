package com.example.demo.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.parentreg;
import com.example.demo.model.tutorreg;
import com.example.demo.repo.tutor_repo;
import com.example.demo.service.tutor_reg_ser;

@Service
public class tutordao implements tutor_reg_ser {
	@Autowired
	tutor_repo ss;

	@Override
	public void tutor_info(tutorreg s1) {
		
		ss.save(s1);
		
	}

	@Override
	public tutorreg login_tutor(String email, String pass) {
		tutorreg tutor= ss.findByEmail(email);
		if(tutor==null ||!tutor.getPass().equals(pass)) {
			throw new IllegalArgumentException("Invalid account number or password");
		}
		return tutor;
	}

	
	@Override
	public List<tutorreg> tut_search(String state, String city) {
		// TODO Auto-generated method stub
		return ss.findAllByStateAndCity(state,city);
	}

	@Override
	public tutorreg sendd_request(Integer id) {
		tutorreg tutor=ss.getById(id);
		return tutor;
	}

	
	@Override
	public void savededit(tutorreg sd) {
		ss.save(sd);
		
	}

	@Override
	public tutorreg edit_tutor(Integer id) {
		tutorreg tutor=ss.getById(id);
		return tutor;
	}

	@Override
	public void delete_tutor(Integer id) {
		ss.deleteById(id);
		
	}

	@Override
	public long totaltutor() {
		// TODO Auto-generated method stub
		return ss.count();
	}

	@Override
	public List<tutorreg> allparent(tutorreg tp) {
		// TODO Auto-generated method stub
		return ss.findAll();
	}

	@Override
	public tutorreg password_tutorfind(String email) {
		tutorreg s= ss.findByEmail(email);
		if (s==null) {
			throw new IllegalArgumentException("invalid");
			
		}
			return s;
		
	}

	
	
	

	
	
	}

	

