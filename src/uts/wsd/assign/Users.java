package uts.wsd.assign;

import java.util.*;

import java.io.Serializable;

import javax.xml.bind.annotation.*;

@XmlRootElement(name = "users")
@XmlAccessorType(XmlAccessType.FIELD)
public class Users implements Serializable {
	@XmlElement(name = "user")
	private ArrayList<User> list = new ArrayList<User>();

	public ArrayList<User> getList() {
		return list;
	}

	public void addUser(User user) {
		list.add(user);
	}

	public void removeUser(User user) {
		list.remove(user);
	}

	public User login(String email, String password) {
		// For each user in the list...
		for (User user : list) {
			if (user.getEmail().equals(email)
					&& user.getPassword().equals(password))
				return user; // Login correct. Return this user.
		}
		return null; // Login incorrect. Return null.
	}

	public User getUser(String email) {
		// For each user in the list...
		for (User user : list) {
			if (user.getEmail().equals(email))
				return user; // Login correct. Return this user.
		}
		return null; // Login incorrect. Return null
	}
	
	public String getName(int id) {
		// For each user in the list...
		for (User user : list) {
			if (user.getID()==id)
				return user.getName(); // Login correct. Return this user.
		}
		return null; // Login incorrect. Return null
	}
	

	public boolean checkAlreadyExists(String email) {
		// For each user in the list...
		for (User user : list) {
			if (user.getEmail().equals(email))
				return true; // Matched return null.
		}
		return false; // not matched fine to continue.
	}
}