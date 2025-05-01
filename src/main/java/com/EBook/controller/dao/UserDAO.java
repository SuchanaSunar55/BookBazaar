package com.EBook.controller.dao;
import com.EBook.model.*;

public interface UserDAO{
	public boolean userRegister(User us);
	
	public User login(String Email, String Password);
	
 }