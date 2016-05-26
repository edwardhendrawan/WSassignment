package uts.wsd.assign;

import java.io.Serializable;

import java.util.*;

import javax.xml.bind.annotation.*;
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class User implements Serializable {
	@XmlAttribute
	private int ID;
	private String name;
	private String email;
	private String password;
	
	public User() {
		super();
	}

	public User(int iD, String name, String email, String password) {
		super();
		ID = iD;
		this.name = name;
		this.email = email;
		this.password = password;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String toString() {
		return "User [name=" + name + "]";
	}
}
