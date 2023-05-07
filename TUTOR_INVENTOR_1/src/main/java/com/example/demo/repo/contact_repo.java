package com.example.demo.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.contact_form_1;


@Repository
public interface contact_repo extends JpaRepository<contact_form_1, Integer> {

}
