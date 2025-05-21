package com.EBook.controller.dao;

import com.EBook.model.User;

public interface UserDAO {
    boolean userRegister(User us);
    User login(String Email, String Password);

    User getUserById(int userId);          // get user for password check
    boolean updateUserPassword(int userId, String newPassword);  // update password
}
