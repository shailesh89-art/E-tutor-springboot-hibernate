package com.example.demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.add_book;
import com.example.demo.repo.book_repo;
import com.example.demo.service.book_ser;

@Service
public class bookdao implements book_ser {
	@Autowired
	book_repo br;
	
	@Override
	public void upload_file(add_book ebk) {
	 br.save(ebk);
		
	}

	

	@Override
	public add_book file_get(int id) {
		
		return br.getById(id);
	}



	@Override
	public long totalebook() {
		// TODO Auto-generated method stub
		return br.count();
	}



	@Override
	public List<add_book> ebooklist(add_book tu) {
		// TODO Auto-generated method stub
		return br.findAll();
	}

}
