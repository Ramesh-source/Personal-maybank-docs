package com.java8;

public class Employee {

	private long id;
    private String fname;
    private String lname;
    
	public Employee(long l, String string, String string2) {
		
		this.id=l;
		
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
    
}
