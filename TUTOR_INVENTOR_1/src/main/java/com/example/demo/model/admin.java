package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class admin {
	@Id
	private int id;
	private String email;
	private String pass;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "admin [id=" + id + ", email=" + email + ", pass=" + pass + "]";
	}
	public admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	

}
