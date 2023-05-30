package com.modal;

public class AppO {
	private int id;
	private int user_id;
	private String fullname;
	private String gender;
	private String age;
	private String appDate;
	private String email;
	private String phone;
	private String desies;
	private int doctorId;
	private String adress;
	private String status;
	public AppO() {
		super();
	}
	public AppO(int user_id, String fullname, String gender, String age, String appDate, String email, String phone,
			String desies, int doctorId, String adress, String status) {
		super();
		this.user_id = user_id;
		this.fullname = fullname;
		this.gender = gender;
		this.age = age;
		this.appDate = appDate;
		this.email = email;
		this.phone = phone;
		this.desies = desies;
		this.doctorId = doctorId;
		this.adress = adress;
		this.status = status;
	}
	
	public AppO(int id, int user_id, String fullname, String gender, String age, String appDate, String email,
			String phone, String desies, int doctorId, String adress, String status) {
		super();
		this.id = id;
		this.user_id = user_id;
		this.fullname = fullname;
		this.gender = gender;
		this.age = age;
		this.appDate = appDate;
		this.email = email;
		this.phone = phone;
		this.desies = desies;
		this.doctorId = doctorId;
		this.adress = adress;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAppDate() {
		return appDate;
	}
	public void setAppDate(String appDate) {
		this.appDate = appDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDesies() {
		return desies;
	}
	public void setDesies(String desies) {
		this.desies = desies;
	}
	public int getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "AppO [id=" + id + ", user_id=" + user_id + ", fullname=" + fullname + ", gender=" + gender + ", age="
				+ age + ", appDate=" + appDate + ", email=" + email + ", phone=" + phone + ", desies=" + desies
				+ ", doctorId=" + doctorId + ", adress=" + adress + ", status=" + status + "]";
	}
	

}
