package com.EBook.controller.dao;

//logic for register
//

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.EBook.model.User;


public class UserDAOImpl implements UserDAO {

	private Connection conn;

	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public boolean userRegister(User us) {
	boolean f=false;
	try {
		String sql="insert into user(User_name,Email,Phone,Password) values(?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, us.getUser_name());
		ps.setString(2,us.getEmail());
		ps.setString(3,us.getPhone());
		ps.setString(4, us.getPassword());
		
	int i=ps.executeUpdate();
	if(i==1) {
		f=true;
	}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		return f;
	}

	@Override
	public User login(String Email, String Password) {
		
		User us=null;
		
		try {
			String sql="select * from user where Email=? and Password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, Email);
			ps.setString(2, Password);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				us= new User();
				us.setUser_ID(rs.getInt(1));
				us.setUser_name(rs.getString(2));
				us.setEmail(rs.getString(3));
				us.setPassword(rs.getString(4));
				us.setPhone(rs.getString(5));
				us.setAddress(rs.getString(6));
				us.setCity(rs.getString(7));
				us.setPostal_code(rs.getString(8));
				us.setCountry(rs.getString(9));
				us.setRegistration_date(rs.getString(10));
				us.setStatus(rs.getString(11));
				us.setDate_of_birth(rs.getString(12));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return us;
	}
	
	
	
	
	
}

