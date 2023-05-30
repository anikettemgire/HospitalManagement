package com.modal;

public class Speciallist {
	private int id;
	private String name;
	
	public Speciallist() {
		super();
	}
	@Override
	public String toString() {
		return "Speciallist [id=" + id + ", name=" + name + "]";
	}
	public Speciallist(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public Speciallist(String name) {
		super();
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	

}
