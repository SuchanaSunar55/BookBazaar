package com.EBook.controller.servlet;

import com.EBook.controller.controller.database.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/UpdateBookServlet")
public class UpdateBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            int bookId = Integer.parseInt(request.getParameter("bookId"));
            String title = request.getParameter("title");
            String author = request.getParameter("author");
            String isbn = request.getParameter("isbn");
            double price = Double.parseDouble(request.getParameter("price"));
            int stock = Integer.parseInt(request.getParameter("stock"));
            String category = request.getParameter("category");
            String status = request.getParameter("status");

            Connection conn = DBConnect.getConn();
            PreparedStatement ps = conn.prepareStatement(
                    "UPDATE Book SET Title=?, Author=?, ISBN=?, Price=?, Stock_quantity=?, Category=?, Status=? WHERE Book_ID=?");
            ps.setString(1, title);
            ps.setString(2, author);
            ps.setString(3, isbn);
            ps.setDouble(4, price);
            ps.setInt(5, stock);
            ps.setString(6, category);
            ps.setString(7, status);
            ps.setInt(8, bookId);

            ps.executeUpdate();
            response.sendRedirect("admin/all_books.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("admin/error.jsp");
        }
    }
}
