package com.EBook.controller.servlet;

import com.EBook.controller.dao.BookDAOImpl;
import com.EBook.controller.controller.database.DBConnect;
import com.EBook.model.Book;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/home")
public class UserHomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("userobj") == null) {
            resp.sendRedirect(req.getContextPath() + "/pages/login.jsp");
            return;
        }

        try {
            BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
            List<Book> books = dao.getAllBooks();

            req.setAttribute("books", books);
            req.getRequestDispatcher("/pages/user/home.jsp").forward(req, resp);

        } catch (Exception e) {
            e.printStackTrace();
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Failed to load books.");
        }
    }
}
