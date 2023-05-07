package com.example.demo.service;

import java.util.List;

import com.example.demo.model.add_book;

public interface book_ser {
	 public void upload_file(add_book ebk);

	
	public add_book file_get(int id);


	List<add_book>ebooklist(add_book tu);
	 long totalebook();
	
}
