package uts.wsd.assign;

import java.io.Serializable;

import java.util.*;

import javax.xml.bind.annotation.*;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Meeting implements Serializable {
	@XmlAttribute
	private int option;
	private String time;
	private String date;
	@XmlElement(name = "responses")
	private ArrayList<Response> responses = new ArrayList<Response>();

	public Meeting() {
		super();
	}
	
	public Meeting(int option, String time, String date) {
		super();
		this.option = option;
		this.time = time;
		this.date = date;
	}

	public int getOption() {
		return option;
	}

	public void setOption(int option) {
		this.option = option;
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

	public void addResponse(String name) {
		responses.add(new Response(name));
	}

//	public int getAvailable() {
//		int count = 0;
//		for (Response response : responses) {
//			if (response.getAvail() == 1) {
//				count++;
//			}
//		}
//		return count;
//	}

	public void setResponses(ArrayList<Response> responses) {
		this.responses = responses;
	}

}
