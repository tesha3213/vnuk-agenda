package vn.edu.vnuk.agenda.model;

import java.util.Calendar;

public class Contact {
	
	private Long id;
	private String name;
	private String email;
	private String address;
	private Calendar dateOfBirth;
	
	// get and set methods for each property
	public String getName() {
		return this.name;
	}
	
	public void setName(String newName) {
		this.name = newName;
	}

	public String getEmail() {
		return this.email;
	}
	
	public void setEmail(String newEmail) {
		this.email = newEmail;
	}
	
	public String getAddress() {
		return this.address;
	}
	
	public void setAddress(String newAddress) {
		this.address = newAddress;
	}
	
	public Long getId() {
		return this.id;
	}
	
	public void setId(Long newId) {
		this.id = newId;
	}
	
	public Calendar getDateOfBirth() {
		return this.dateOfBirth;
	}
	
	public void setDateOfBirth(Calendar newDateOfBirth) {
		this.dateOfBirth = newDateOfBirth;
	}
}