//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.10-b140802.1033 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2016.05.27 at 02:46:00 PM AEST 
//

package uts.wsd.assign;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;

/**
 * <p>Java class for anonymous complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="title" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="state" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="userID" type="{http://www.w3.org/2001/XMLSchema}int"/>
 *         &lt;element name="datecreated" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="location" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="description" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="meetings">
 *           &lt;complexType>
 *             &lt;complexContent>
 *               &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *                 &lt;sequence>
 *                   &lt;element name="meeting" maxOccurs="unbounded">
 *                     &lt;complexType>
 *                       &lt;complexContent>
 *                         &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *                           &lt;sequence>
 *                             &lt;element name="time" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *                             &lt;element name="date" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *                             &lt;element name="responses">
 *                               &lt;complexType>
 *                                 &lt;complexContent>
 *                                   &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *                                     &lt;sequence>
 *                                       &lt;element name="response" type="{http://www.w3.org/2001/XMLSchema}string" maxOccurs="unbounded" minOccurs="0"/>
 *                                     &lt;/sequence>
 *                                   &lt;/restriction>
 *                                 &lt;/complexContent>
 *                               &lt;/complexType>
 *                             &lt;/element>
 *                           &lt;/sequence>
 *                           &lt;attribute name="option" type="{http://www.w3.org/2001/XMLSchema}int" />
 *                         &lt;/restriction>
 *                       &lt;/complexContent>
 *                     &lt;/complexType>
 *                   &lt;/element>
 *                 &lt;/sequence>
 *               &lt;/restriction>
 *             &lt;/complexContent>
 *           &lt;/complexType>
 *         &lt;/element>
 *       &lt;/sequence>
 *       &lt;attribute name="id" type="{http://www.w3.org/2001/XMLSchema}int" />
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = { "title", "state", "userID", "datecreated", "location", "description", "meetings" })
public class Poll implements Serializable {

	@XmlElement(required = true)
	protected String title;
	protected int state;
	protected int userID;
	@XmlElement(required = true)
	protected String datecreated;
	@XmlElement(required = true)
	protected String location;
	@XmlElement(required = true)
	protected String description;
	@XmlElement(required = true)
	protected Meetings meetings;
	@XmlAttribute(name = "id")
	protected Integer id;

	public Poll() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Poll(String title, int state, int userID , String dateCreated, String location, String description, int id){
		super();
		this.title = title;
		this.state = state;
		this.userID = userID;
		this.datecreated = dateCreated; 
		this.location = location; 
		this.description = description; 
		this.meetings= new Meetings();
		this.id = id;
		
	}
	
	/**
	 * Gets the value of the title property.
	 * 
	 * @return possible object is {@link String }
	 * 
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * Sets the value of the title property.
	 * 
	 * @param value
	 *            allowed object is {@link String }
	 * 
	 */
	public void setTitle(String value) {
		this.title = value;
	}

	/**
	 * Gets the value of the state property.
	 * 
	 */
	public int getState() {
		return state;
	}

	/**
	 * Sets the value of the state property.
	 * 
	 */
	public void setState(int value) {
		this.state = value;
	}

	/**
	 * Gets the value of the userID property.
	 * 
	 */
	public int getUserID() {
		return userID;
	}

	/**
	 * Sets the value of the userID property.
	 * 
	 */
	public void setUserID(int value) {
		this.userID = value;
	}

	/**
	 * Gets the value of the datecreated property.
	 * 
	 * @return possible object is {@link String }
	 * 
	 */
	public String getDatecreated() {
		return datecreated;
	}

	/**
	 * Sets the value of the datecreated property.
	 * 
	 * @param value
	 *            allowed object is {@link String }
	 * 
	 */
	public void setDatecreated(String value) {
		this.datecreated = value;
	}

	/**
	 * Gets the value of the location property.
	 * 
	 * @return possible object is {@link String }
	 * 
	 */
	public String getLocation() {
		return location;
	}

	/**
	 * Sets the value of the location property.
	 * 
	 * @param value
	 *            allowed object is {@link String }
	 * 
	 */
	public void setLocation(String value) {
		this.location = value;
	}

	/**
	 * Gets the value of the description property.
	 * 
	 * @return possible object is {@link String }
	 * 
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * Sets the value of the description property.
	 * 
	 * @param value
	 *            allowed object is {@link String }
	 * 
	 */
	public void setDescription(String value) {
		this.description = value;
	}

	/**
	 * Gets the value of the meetings property.
	 * 
	 * @return possible object is {@link Meetings }
	 * 
	 */
	public Meetings getMeetings() {
		return meetings;
	}

	/**
	 * Sets the value of the meetings property.
	 * 
	 * @param value
	 *            allowed object is {@link Meetings }
	 * 
	 */
	public void setMeetings(Meetings value) {
		this.meetings = value;
	}

	/**
	 * Gets the value of the id property.
	 * 
	 * @return possible object is {@link Integer }
	 * 
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * Sets the value of the id property.
	 * 
	 * @param value
	 *            allowed object is {@link Integer }
	 * 
	 */
	public void setId(Integer value) {
		this.id = value;
	}

	public void closePoll() {
		state = 0;
	}

	public String getActualState()
	{
		if (state == 1) {
			return "Open";
		} else {
			return "Closed";
		}
	}

	public String toString() {
		return getActualState() + "\n" + "\n Date Created:" + datecreated + "\n Location:" + location
				+ "\n" + description ;
	}
	public void addMeeting(String time,String date,int option){
		meetings.addMeeting(new Meeting(time, date, option));
	}

}
