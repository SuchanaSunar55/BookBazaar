package com.EBook.controller.dao;

import com.EBook.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAOImpl implements UserDAO {

    private Connection conn;

    public UserDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }

    @Override
    public boolean userRegister(User us) {
        boolean f = false;
        try {
            String sql = "insert into user(User_name,Email,Phone,Password,role) values(?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, us.getUser_name());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPhone());
            ps.setString(4, us.getPassword());
            ps.setString(5, us.getRole());  // Added role here

            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    @Override
    public User login(String Email, String Password) {
        User us = null;

        try {
            String sql = "select * from user where Email=? and Password=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, Email);
            ps.setString(2, Password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                us = new User();
                us.setUser_ID(rs.getInt("User_ID"));
                us.setUser_name(rs.getString("User_name"));
                us.setEmail(rs.getString("Email"));
                us.setPassword(rs.getString("Password"));
                us.setPhone(rs.getString("Phone"));
                us.setAddress(rs.getString("Address"));
                us.setCity(rs.getString("City"));
                us.setPostal_code(rs.getString("Postal_code"));
                us.setCountry(rs.getString("Country"));
                us.setRegistration_date(rs.getString("Registration_date"));
                us.setStatus(rs.getString("Status"));
                us.setDate_of_birth(rs.getString("Date_of_birth"));
                us.setRole(rs.getString("role")); // Role set here
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return us;
    }

    @Override
    public User getUserById(int userId) {
        User us = null;
        try {
            String sql = "SELECT * FROM user WHERE User_ID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                us = new User();
                us.setUser_ID(rs.getInt("User_ID"));
                us.setUser_name(rs.getString("User_name"));
                us.setEmail(rs.getString("Email"));
                us.setPassword(rs.getString("Password"));
                us.setPhone(rs.getString("Phone"));
                us.setAddress(rs.getString("Address"));
                us.setCity(rs.getString("City"));
                us.setPostal_code(rs.getString("Postal_code"));
                us.setCountry(rs.getString("Country"));
                us.setRegistration_date(rs.getString("Registration_date"));
                us.setStatus(rs.getString("Status"));
                us.setDate_of_birth(rs.getString("Date_of_birth"));
                us.setRole(rs.getString("role"));  // Role set here
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return us;
    }

    @Override
    public boolean updateUserPassword(int userId, String newPassword) {
        boolean updated = false;
        try {
            String sql = "UPDATE user SET Password = ? WHERE User_ID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setInt(2, userId);

            int i = ps.executeUpdate();
            updated = (i == 1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return updated;
    }
}
