package com.EBook.controller.servlet;

import com.EBook.controller.dao.BookDAO;
import com.EBook.controller.dao.BookDAOImpl;
import com.EBook.controller.controller.database.DBConnect;
import com.EBook.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet("/user/search")
public class BookSearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String query = request.getParameter("query");

        if (query != null && !query.trim().isEmpty()) {
            try (Connection conn = DBConnect.getConn()) {
                BookDAO bookDAO = new BookDAOImpl(conn); // ✅ Use the implementation class
                List<Book> results = bookDAO.searchBooks(query.trim());

                request.setAttribute("searchQuery", query);
                request.setAttribute("results", results);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        request.getRequestDispatcher("/pages/user/search.jsp").forward(request, response);
    }
}
