package uts.wsd.assign;

import java.io.Serializable;

import java.util.*;

import javax.xml.bind.annotation.*;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Poll implements Serializable {

	private int ID;
	private String title;
	private int state;
	private int userID;
	private String dateCreated;
	private String location;
	private String description;
	private ArrayList<Meeting> Meetings = new ArrayList<Meeting>();

	public Poll() {
		super();
	}

	public Poll(String title, int state, int userID, String dateCreated, String location, String description) {
		super();
		this.title = title;
		this.state = state;
		this.userID = userID;
		this.dateCreated = dateCreated;
		this.location = location;
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(String dateCreated) {
		this.dateCreated = dateCreated;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public void closePoll(){
		state = 0;
	}
	
}
