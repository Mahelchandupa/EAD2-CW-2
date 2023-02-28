package com.xadmin.employeemanage.bean;

public class User {
	protected int id;
	protected String nic;
    protected String name;
    protected String department;
    protected String designation;
    protected String joindate;
    
    
    
	public User(String nic, String name, String department, String designation, String joindate) {
		super();
		this.nic = nic;
		this.name = name;
		this.department = department;
		this.designation = designation;
		this.joindate = joindate;
	}

	public User(int id, String nic, String name, String department, String designation, String joindate) {
		super();
		this.id = id;
		this.nic = nic;
		this.name = name;
		this.department = department;
		this.designation = designation;
		this.joindate = joindate;
	}

	public int getId() {
		return id;
	}
	
	public String getNic() {
		return nic;
	}

	public void setNic(String nic) {
		this.nic = nic;
	}

	public String getName() {
		return name;
	}
	public String getDepartment() {
		return department;
	}
	public String getDesignation() {
		return designation;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate;
	} 
    
    
}
