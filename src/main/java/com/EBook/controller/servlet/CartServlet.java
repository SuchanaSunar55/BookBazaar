package com.EBook.controller.servlet;

import com.EBook.controller.controller.database.DBConnect;
import com.EBook.model.Cart;
import com.EBook.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("userobj");

        if (user == null) {
            resp.sendRedirect(req.getContextPath() + "/pages/login.jsp");
            return;
        }

        try (Connection conn = DBConnect.getConn()) {
            // Get Cart_ID for user
            PreparedStatement psCart = conn.prepareStatement("SELECT Cart_ID FROM Cart WHERE User_ID = ?");
            psCart.setInt(1, user.getUser_ID());
            ResultSet rsCart = psCart.executeQuery();

            if (!rsCart.next()) {
                // No cart yet: empty list
                req.setAttribute("cartItems", new ArrayList<Cart>());
                req.getRequestDispatcher("/pages/user/cart.jsp").forward(req, resp);
                return;
            }

            int cartId = rsCart.getInt("Cart_ID");

            // Get cart items joined with book details
            PreparedStatement psItems = conn.prepareStatement(
                    "SELECT b.Book_ID, b.Title, b.Author, b.Price, cb.Quantity " +
                    "FROM Cart_Book cb JOIN Book b ON cb.Book_ID = b.Book_ID WHERE cb.Cart_ID = ?");
            psItems.setInt(1, cartId);
            ResultSet rsItems = psItems.executeQuery();

            List<Cart> cartItems = new ArrayList<>();
            while (rsItems.next()) {
                Cart c = new Cart();
                c.setBookId(rsItems.getInt("Book_ID"));
                c.setBookName(rsItems.getString("Title"));
                c.setAuthor(rsItems.getString("Author"));
                double price = rsItems.getDouble("Price");
                int quantity = rsItems.getInt("Quantity");
                c.setPrice(price);
                c.setTotalPrice(price * quantity);
                // optionally add quantity field to Cart model if needed
                cartItems.add(c);
            }

            req.setAttribute("cartItems", cartItems);
            req.getRequestDispatcher("/pages/user/cart.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            resp.sendRedirect(req.getContextPath() + "/pages/user/home.jsp");
        }
    }
}
