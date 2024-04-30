package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDao {
	private Connection conn;

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean userRegister(User u) {
		boolean f=false;
		
		try {
			String sql="insert into user_dtls(fullName,email,phone,password) values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, u.getFullName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPhone());
			ps.setString(4, u.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
public boolean userCheck(String email) {
	
	boolean f=true;
	
	try {
		String sql="select * from user_dtls where email=? ";
		PreparedStatement ps = conn.prepareStatement(sql);
	
		ps.setString(1, email);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
		
			f=false;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	
	
	return f;
}
public User login(String email,String password) {
	User u=null;
	try {
		String sql="select * from user_dtls where email=? and password=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, email);
		ps.setString(2, password);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			u=new User();
			u.setId(rs.getInt(1));
			u.setFullName(rs.getString(2));
			u.setEmail(rs.getString(3));
			u.setPhone(rs.getString(4));
			u.setPassword(rs.getString(5));
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return u;
}
public boolean checkOldPassword(int userid, String oldPassword) {
	boolean f=false;
	
	try {
		String sql="select * from user_dtls where id=? and password=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, userid);
		ps.setString(2, oldPassword);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			f=true;
		}
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return f;
}

public boolean changePassword(int userid, String newPassword) {
	boolean f=false;
	
	try {
		String sql="update user_dtls set password=? where id=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, newPassword);
		ps.setInt(2, userid);
		
		int i=ps.executeUpdate();
		if(i==1) {
			f=true;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return f;
}

}
