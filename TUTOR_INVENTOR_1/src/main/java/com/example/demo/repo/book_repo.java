package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.add_book;

@Repository
public interface book_repo extends JpaRepository<add_book, Integer> {
long count();
}
