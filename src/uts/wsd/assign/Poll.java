package uts.wsd.assign;

import java.io.Serializable;

import java.util.*;

import javax.xml.bind.annotation.*;

@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Poll {
	
	private String title;
	private int  ;
	private String password;
	private String gender;
	@XmlElement(name = "favouriteColour")
	private String favcol;

	public User() {
			super();
			// TODO Auto-generated constructor stub
		}

	public Poll(String email, String fullname, String password, String gender,
				String favcol) {
			super();
			this.fullname = fullname;
			this.password = password;
			this.favcol = favcol;
			this.gender = gender;
			this.email = email;
		}

}
