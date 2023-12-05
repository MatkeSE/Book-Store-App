package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDAOImpl implements UserDAO {

	private Connection conn;
	
	
	
	public UserDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}



	@Override
	public boolean userRegister(User u) {
		boolean f=false;
		
		try {
			String sql="insert into user(name,email,phno,password) values (?,?,?,?)";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPhno());
			ps.setString(4, u.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}

		
			
		}
		catch (Exception e) {
            e.printStackTrace();
		}
		
		return f;
	}



	@Override
	public User login(String email, String password) {
		User u=null;
		
		try {
			
			String sql="select * from user where email=? and password=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				u=new User();
				u.setId(rs.getInt(1));
				u.setName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPhno(rs.getString(4));
				u.setPassword(rs.getString(5));
				u.setAddress(rs.getString(6));
				u.setLandmark(rs.getString(7));
				u.setCity(rs.getString(8));
				u.setState(rs.getString(9));
				u.setPincode(rs.getString(10));
				
			}

			
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		return u;
		
	}



	@Override
	public boolean checkPassword(int id,String ps) {
		boolean f=false;
		
		try {
			
			String sql="select * from user where id=? and password=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.setString(2, ps);
			
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				f=true;
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}



	@Override
	public boolean updateProfile(User u) {
        boolean f=false;
		
		try {
			String sql="update user set name=?,email=?,phno=? where id=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPhno());
			ps.setInt(4, u.getId());
			
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}

		
			
		}
		catch (Exception e) {
            e.printStackTrace();
		}
		
		return f;
	}



	@Override
	public boolean checkUser(String em) {
		boolean f= true;
		
		try {
			
			String sql="select * from user where email=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1, em);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				f=false;
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}

}
