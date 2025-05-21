package com.EBook.controller.servlet;

import com.EBook.controller.controller.database.DBConnect;
import com.EBook.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;

@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int bookId = Integer.parseInt(req.getParameter("bookId"));
            HttpSession session = req.getSession();
            User user = (User) session.getAttribute("userobj");

            if (user == null) {
                session.setAttribute("failedMsg", "Please login first.");
                resp.sendRedirect(req.getContextPath() + "/pages/login.jsp");
                return;
            }

            try (Connection conn = DBConnect.getConn()) {
                // 1. Get or create cart ID
                int cartId = -1;
                PreparedStatement checkCart = conn.prepareStatement("SELECT Cart_ID FROM Cart WHERE User_ID = ?");
                checkCart.setInt(1, user.getUser_ID());
                ResultSet rs = checkCart.executeQuery();

                if (rs.next()) {
                    cartId = rs.getInt("Cart_ID");
                } else {
                    cartId = (int) (System.currentTimeMillis() / 1000); // generate unique ID (better with a sequence or auto-increment in real apps)
                    PreparedStatement createCart = conn.prepareStatement(
                            "INSERT INTO Cart (Cart_ID, User_ID, Created_At, Update_At, Cart_Status, Cart_Total) VALUES (?, ?, NOW(), NOW(), ?, ?)");
                    createCart.setInt(1, cartId);
                    createCart.setInt(2, user.getUser_ID());
                    createCart.setString(3, "ACTIVE");
                    createCart.setDouble(4, 0.0);
                    createCart.executeUpdate();
                }

                // 2. Check if book already in cart - Cart_Book table
                PreparedStatement checkItem = conn.prepareStatement(
                        "SELECT Quantity FROM Cart_Book WHERE Book_ID = ? AND Cart_ID = ?");
                checkItem.setInt(1, bookId);
                checkItem.setInt(2, cartId);
                ResultSet itemRs = checkItem.executeQuery();

                if (itemRs.next()) {
                    // update quantity +1
                    int quantity = itemRs.getInt("Quantity") + 1;
                    PreparedStatement updateQty = conn.prepareStatement(
                            "UPDATE Cart_Book SET Quantity = ? WHERE Book_ID = ? AND Cart_ID = ?");
                    updateQty.setInt(1, quantity);
                    updateQty.setInt(2, bookId);
                    updateQty.setInt(3, cartId);
                    updateQty.executeUpdate();
                } else {
                    // insert new record
                    PreparedStatement insertItem = conn.prepareStatement(
                            "INSERT INTO Cart_Book (Book_ID, Cart_ID, Quantity) VALUES (?, ?, ?)");
                    insertItem.setInt(1, bookId);
                    insertItem.setInt(2, cartId);
                    insertItem.setInt(3, 1);
                    insertItem.executeUpdate();
                }

                resp.setContentType("text/plain");
                resp.setCharacterEncoding("UTF-8");
                resp.getWriter().write("Book added to cart!");

            } catch (SQLException e) {
                e.printStackTrace();
                resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
                resp.setContentType("text/plain");
                resp.getWriter().write("Failed to add book to cart.");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.setContentType("text/plain");
            resp.getWriter().write("Invalid request.");
        }
    }
}
