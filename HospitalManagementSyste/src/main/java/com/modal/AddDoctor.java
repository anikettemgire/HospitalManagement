package com.modal;

public class AddDoctor {
	private int id;
	private String name;
	private String dob;
	private String quali;
	private String specil;
	private String email;
	private String mobno;
	private String pass;
	public AddDoctor(int id, String name, String dob, String quali, String specil, String email, String mobno,String pass) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.quali = quali;
		this.specil = specil;
		this.email = email;
		this.mobno = mobno;
		this.pass=pass;
		
	}
	public AddDoctor(String name, String dob, String quali, String specil, String email, String mobno,String pass) {
		super();
		this.name = name;
		this.dob = dob;
		this.quali = quali;
		this.specil = specil;
		this.email = email;
		this.mobno = mobno;
		this.pass=pass;
	}
	
	public AddDoctor(int id, String name, String dob, String quali, String specil, String email, String mobno) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.quali = quali;
		this.specil = specil;
		this.email = email;
		this.mobno = mobno;
	}
	public AddDoctor() {
		super();
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
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getQuali() {
		return quali;
	}
	public void setQuali(String quali) {
		this.quali = quali;
	}
	public String getSpecil() {
		return specil;
	}
	public void setSpecil(String specil) {
		this.specil = specil;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "AddDoctor [id=" + id + ", name=" + name + ", dob=" + dob + ", quali=" + quali + ", specil=" + specil
				+ ", email=" + email + ", mobno=" + mobno + "]";
	}
	

}
