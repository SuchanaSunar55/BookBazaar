package com.EBook.controller.servlet;

import com.EBook.controller.dao.BookDAO;
import com.EBook.controller.dao.BookDAOImpl;
import com.EBook.model.Book;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.EBook.controller.controller.database.DBConnect;

@WebServlet("/admin/all-books")
public class AllBooksServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try (Connection conn = DBConnect.getConn()) {
            BookDAO bookDAO = new BookDAOImpl(conn);
            List<Book> books = bookDAO.getAllBooks();

            request.setAttribute("bookList", books);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/admin/all_books.jsp");
            dispatcher.forward(request, response);

        } catch (SQLException e) {
            e.printStackTrace();            

            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Database connection error.");
         
        }
        
    }
}
