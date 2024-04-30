package com.entity;

public class Specalist {
	
	private int id;
	private String specalistName;
	
	
	
	public Specalist() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Specalist(int id, String specalistName) {
		super();
		this.id = id;
		this.specalistName = specalistName;
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
	 * @return the specalistName
	 */
	public String getSpecalistName() {
		return specalistName;
	}
	/**
	 * @param specalistName the specalistName to set
	 */
	public void setSpecalistName(String specalistName) {
		this.specalistName = specalistName;
	}
	

}
