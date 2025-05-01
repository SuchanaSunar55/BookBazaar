package com.EBook.controller.controller.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
    private static final String URL = "jdbc:mysql://localhost:3306/ebook"; // Your DB name here
    private static final String USER = "root"; // or your phpMyAdmin username
    private static final String PASSWORD = ""; // your DB password (leave blank if none)

    public static Connection getConn() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL 8+ driver
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("JDBC Driver not found", e);
        }
    }
}
