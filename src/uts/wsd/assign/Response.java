package uts.wsd.assign;

import java.io.Serializable;

import java.util.*;

import javax.xml.bind.annotation.*;

public class Response {
	@XmlAttribute
	private int avail;
	private String name;
	
	public Response () {
		super();
	}
	
	

	public Response(int avail, String name) {
		super();
		this.avail = avail;
		this.name = name;
	}



	public int getAvail() {
		return avail;
	}

	public void setAvail(int avail) {
		this.avail = avail;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
}

