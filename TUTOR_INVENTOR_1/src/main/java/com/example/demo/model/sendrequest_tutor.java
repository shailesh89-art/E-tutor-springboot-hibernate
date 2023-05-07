package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class sendrequest_tutor {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id2;
	private String contact;
	private String email;
	private String msg;
	
	@ManyToOne
	@JoinColumn(name = "tutorreg_id")
	private tutorreg tutor;

	public int getId2() {
		return id2;
	}

	public void setId2(int id2) {
		this.id2 = id2;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public tutorreg getTutor() {
		return tutor;
	}

	public void setTutor(tutorreg tutor) {
		this.tutor = tutor;
	}

	@Override
	public String toString() {
		return "sendrequest_tutor [id2=" + id2 + ", contact=" + contact + ", email=" + email + ", msg=" + msg
				+ ", tutor=" + tutor + "]";
	}

	

}
