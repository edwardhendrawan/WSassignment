package uts.wsd.assign;

import java.io.Serializable;

import java.util.*;

import javax.xml.bind.annotation.*;
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Meeting implements Serializable {
private String time;
private String date;
private ArrayList<Response> responses;

public Meeting () {
	super();
}

public Meeting(String time, String date, ArrayList<Response> responses) {
	super();
	this.time = time;
	this.date = date;
	this.responses = responses;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public ArrayList<Response> getResponses() {
	return responses;
}
public void setResponses(ArrayList<Response> responses) {
	this.responses = responses;
}



}
