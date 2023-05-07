package com.example.demo.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class tutorreg {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String fname;
	private String lname;
	
	private String contact;
	private String pass;
	
	private String email;
	private String state;
	private String city;
	private String info_self;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getInfo_self() {
		return info_self;
	}
	public void setInfo_self(String info_self) {
		this.info_self = info_self;
	}
	public String getExp() {
		return exp;
	}
	@Override
	public String toString() {
		return "tutorreg [id=" + id + ", fname=" + fname + ", lname=" + lname + ", contact=" + contact + ", pass="
				+ pass + ", email=" + email + ", state=" + state + ", city=" + city + ", info_self=" + info_self
				+ ", exp=" + exp + "]";
	}
	public void setExp(String exp) {
		this.exp = exp;
	}
	private String exp;
	
}
