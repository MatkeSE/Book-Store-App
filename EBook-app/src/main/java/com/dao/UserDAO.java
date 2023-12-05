package com.dao;

import com.entity.User;

public interface UserDAO {
	public boolean userRegister(User u);
	
	public User login(String email, String password);
	
	public boolean checkPassword(int id,String ps);
	
	public boolean updateProfile(User u);
	
	public boolean checkUser(String em);

}
