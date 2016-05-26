package uts.wsd.assign;

import java.io.*;
import java.util.*;

import java.io.Serializable;
import javax.xml.bind.*;

public class WebApplication implements Serializable {
	private String filePath;
	private Users users;

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
	
	public void save() throws JAXBException, IOException { 

		JAXBContext jc = JAXBContext.newInstance(Users.class);
		Marshaller m = jc.createMarshaller();
		m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
		m.marshal(users, new FileOutputStream(filePath));
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
