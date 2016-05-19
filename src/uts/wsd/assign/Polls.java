package uts.wsd.assign;

import java.util.*;

import java.io.Serializable;

import javax.xml.bind.annotation.*;

public class Polls implements Serializable {
	@XmlElement(name = "poll")
	private ArrayList<Poll> polls = new ArrayList<Poll>();

	public ArrayList<Poll> getList() {
		return polls;
	}

	public void addPoll(Poll poll) {
		polls.add(poll);
	}

	public void closePoll(Poll poll) {
		poll.closePoll();
	}

	public Poll fetchPoll(int id) {
		// For each user in the list...
		for (Poll poll : polls) {
			if (poll.getID()==id)
				return poll; // Login correct. Return this user.
		}
		return null; // Login incorrect. Return null.
	}


}
