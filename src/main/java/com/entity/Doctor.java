package com.entity;

public class Doctor {
	
	private int id;
	private String fullName;
	private String dob;
	private String qualification;
	private String specalist;
	private String email;
	private String phone;
	private String password;
	
	
	
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}





	public Doctor(String fullName, String dob, String qualification, String specalist, String email, String phone,
			String password) {
		super();
		this.fullName = fullName;
		this.dob = dob;
		this.qualification = qualification;
		this.specalist = specalist;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}


	public Doctor(int id, String fullName, String dob, String qualification, String specalist, String email,
			String phone, String password) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.dob = dob;
		this.qualification = qualification;
		this.specalist = specalist;
		this.email = email;
		this.phone = phone;
		this.password = password;
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
	 * @return the dob
	 */
	public String getDob() {
		return dob;
	}



	/**
	 * @param dob the dob to set
	 */
	public void setDob(String dob) {
		this.dob = dob;
	}



	/**
	 * @return the qualification
	 */
	public String getQualification() {
		return qualification;
	}



	/**
	 * @param qualification the qualification to set
	 */
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}



	/**
	 * @return the specalist
	 */
	public String getSpecalist() {
		return specalist;
	}



	/**
	 * @param specalist the specalist to set
	 */
	public void setSpecalist(String specalist) {
		this.specalist = specalist;
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
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}



	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}



	@Override
	public String toString() {
		return "Docter [id=" + id + ", fullName=" + fullName + ", dob=" + dob + ", qualification=" + qualification
				+ ", specalist=" + specalist + ", email=" + email + ", phone=" + phone + ", password=" + password + "]";
	}
	
	

}
