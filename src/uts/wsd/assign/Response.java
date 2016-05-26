package uts.wsd.assign;

import java.io.Serializable;

import java.util.*;

import javax.xml.bind.annotation.*;
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Response {
	private String name;
	
	public Response () {
		super();
	}

	public Response(String name) {
		super();
		this.name = name;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
}

