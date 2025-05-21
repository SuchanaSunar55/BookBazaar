package com.EBook.controller.servlet;

import com.EBook.controller.controller.database.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/admin/deleteBook")
public class DeleteBookServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int bookId = Integer.parseInt(request.getParameter("id")); // must match ?id= in URL
            Connection conn = DBConnect.getConn();
            PreparedStatement ps = conn.prepareStatement("DELETE FROM book WHERE book_id = ?");
            ps.setInt(1, bookId);
            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        response.sendRedirect("admin/all_books.jsp");
    }
}
