package com.example.demo.service;


import java.util.List;

import com.example.demo.model.tutorreg;

public interface tutor_reg_ser {
	void tutor_info(tutorreg s1);

	tutorreg login_tutor(String email, String pass);

	

	List<tutorreg> tut_search(String state, String city);

	tutorreg sendd_request(Integer id);

	List<tutorreg> allparent(tutorreg tp);

	void savededit(tutorreg sd);

	tutorreg edit_tutor(Integer id);

	void delete_tutor(Integer id);

	long totaltutor();

	tutorreg password_tutorfind(String email);

	

	


	

	

	
}
