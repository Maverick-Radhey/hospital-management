package com.entity;

public class Appointment {
	private int id;
	private int userId;
	private String fullName;
	private String gender;
	private String age;
	private String appointDate;
	private String email;
	private String phone;
	private String diseases;
	private int doctorId;
	private String address;
	private String status;
	
	
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Appointment(int userId, String fullName, String gender, String age, String appointDate, String email,
			String phone, String diseases, int doctorId, String address, String status) {
		super();
		this.userId = userId;
		this.fullName = fullName;
		this.gender = gender;
		this.age = age;
		this.appointDate = appointDate;
		this.email = email;
		this.phone = phone;
		this.diseases = diseases;
		this.doctorId = doctorId;
		this.address = address;
		this.status = status;
	}


	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}


	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}


	/**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}


	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}


	/**
	 * @return the fullName
	 */
	public String getFullName() {
		return fullName;
	}


	/**
	 * @param fullName the fullName to set
	 */
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}


	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}


	/**
	 * @return the age
	 */
	public String getAge() {
		return age;
	}


	/**
	 * @param age the age to set
	 */
	public void setAge(String age) {
		this.age = age;
	}


	/**
	 * @return the appointDate
	 */
	public String getAppointDate() {
		return appointDate;
	}


	/**
	 * @param appointDate the appointDate to set
	 */
	public void setAppointDate(String appointDate) {
		this.appointDate = appointDate;
	}


	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}


	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}


	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}


	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}


	/**
	 * @return the diseases
	 */
	public String getDiseases() {
		return diseases;
	}


	/**
	 * @param diseases the diseases to set
	 */
	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}


	/**
	 * @return the doctorId
	 */
	public int getDoctorId() {
		return doctorId;
	}


	/**
	 * @param doctorId the doctorId to set
	 */
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}


	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}


	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}


	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}


	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "Appointment [id=" + id + ", userId=" + userId + ", fullName=" + fullName + ", gender=" + gender
				+ ", age=" + age + ", appointDate=" + appointDate + ", email=" + email + ", phone=" + phone
				+ ", diseases=" + diseases + ", doctorId=" + doctorId + ", address=" + address + ", status=" + status
				+ "]";
	}
	

	
	
	
}
