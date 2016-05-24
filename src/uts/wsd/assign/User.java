package uts.wsd.assign;

import java.io.Serializable;

import java.util.*;

import javax.xml.bind.annotation.*;
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class User implements Serializable {
	private String email;
	@XmlElement(name="name")
	private String fullname;
	private String password;
	private String gender;
	@XmlElement(name="favouriteColour")
	private String favcol;

	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User(String email, String fullname, String password, String gender,
			String favcol) {
		super();
		this.fullname = fullname;
		this.password = password;
		this.favcol = favcol;
		this.gender = gender;
		this.email = email;
	}


	public String getFullname() {
		return fullname;
	}


	public void setFullname(String fullname) {
		this.fullname = fullname;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getFavcol() {
		return favcol;
	}


	public void setFavcol(String favcol) {
		this.favcol = favcol;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
