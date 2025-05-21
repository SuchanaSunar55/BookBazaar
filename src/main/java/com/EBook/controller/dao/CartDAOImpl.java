package com.EBook.controller.dao;

import com.EBook.model.Cart;
import java.sql.*;
import java.util.*;

public class CartDAOImpl implements CartDAO {

    private Connection conn;

    public CartDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public boolean addToCart(Cart cart) {
        boolean result = false;
        try {
            String sql = "INSERT INTO cart (book_id, user_id, book_name, author, price, total_price) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, cart.getBookId());
            ps.setInt(2, cart.getUserId());
            ps.setString(3, cart.getBookName());
            ps.setString(4, cart.getAuthor());
            ps.setDouble(5, cart.getPrice());
            ps.setDouble(6, cart.getTotalPrice());

            int i = ps.executeUpdate();
            result = i == 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public List<Cart> getCartByUser(int userId) {
        // Optional: implement if you want to list the user's cart items
        return null;
    }
}
