package uts.wsd.assign;

import java.io.*;
import java.util.*;

import java.io.Serializable;
import javax.xml.bind.*;

public class WebApplication implements Serializable {
	private String filePath;
	private Users users;
	private Polls polls;

	public void setLoad(String filePath) throws JAXBException, IOException {
		this.filePath = filePath;
		users = new Users();

		JAXBContext jc = JAXBContext.newInstance(Users.class);
		Unmarshaller u = jc.createUnmarshaller();

		// Now unmarshal the object from the file
		FileInputStream fin = new FileInputStream(filePath);
		users = (Users) u.unmarshal(fin); // This loads the "users" object
		fin.close();
	}
	
	public void save(String filePath) throws JAXBException, IOException { 
		this.filePath = filePath;
		JAXBContext jc = JAXBContext.newInstance(Users.class);
		Marshaller m = jc.createMarshaller();
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		m.marshal(users, new FileOutputStream(filePath));
	}
	
	public void setLoadPolls(String filePath) throws JAXBException, IOException {
		this.filePath = filePath;
		polls = new Polls();

		JAXBContext jc = JAXBContext.newInstance(Polls.class);
		Unmarshaller u = jc.createUnmarshaller();

		// Now unmarshal the object from the file
		FileInputStream fin = new FileInputStream(filePath);
		polls = (Polls) u.unmarshal(fin); // This loads the "users" object
		fin.close();
	}
	
	public void savePolls(String filePath) throws JAXBException, IOException { 
		this.filePath = filePath;
		JAXBContext jc = JAXBContext.newInstance(Polls.class);
		Marshaller m = jc.createMarshaller();
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		m.marshal(polls, new FileOutputStream(filePath));
	}

	public Polls getPolls() {
		return polls;
	}

	public void setPolls(Polls polls) {
		this.polls = polls;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public String getFilePath() {
		return filePath;
	}
}
