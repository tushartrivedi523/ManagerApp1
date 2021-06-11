package com.boot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.validation.constraints.Size;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String Name;
	
//	@Size(min = 5, max = 50,message = "Min 5 and Max 50 character...")
	@Column(unique=true)
	private String Username;
	
//	@Size(min = 5, max = 50,message = "Min 5 and Max 50 character...")
	private String Password;

	public User(int id, String name, String username, String password) {
		super();
		this.id = id;
		Name = name;
		Username = username;
		Password = password;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

}
