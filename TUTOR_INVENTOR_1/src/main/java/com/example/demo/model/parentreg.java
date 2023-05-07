package com.example.demo.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class parentreg {
	
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
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	@Override
	public String toString() {
		return "parentreg [id=" + id + ", fname=" + fname + ", lname=" + lname + ", contact=" + contact + ", pass="
				+ pass + ", email=" + email + ", state=" + state + ", city=" + city + ", area=" + area + ", zip=" + zip
				+ "]";
	}
	private String area;
	private String zip;
	public parentreg(int id, String fname, String lname, String contact, String pass, String email, String state,
			String city, String area, String zip) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.contact = contact;
		this.pass = pass;
		this.email = email;
		this.state = state;
		this.city = city;
		this.area = area;
		this.zip = zip;
	}




	public parentreg() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
}
