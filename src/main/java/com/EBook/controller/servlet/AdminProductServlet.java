/*
 * package com.EBook.controller.servlet;
 * 
 * import java.io.IOException; import java.sql.Date; import
 * java.sql.SQLException; import java.util.List;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.*;
 * 
 * import com.EBook.model.Book; import
 * com.EBook.controller.controller.database.DBConnect; import
 * com.EBook.controller.dao.*;
 * 
 * @WebServlet("/admin/products") public class AdminProductServlet extends
 * HttpServlet {
 * 
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { try { BookDAO dao = new
 * BookDAOImpl(DBConnect.getConn()); List<Book> books = dao.getAllBooks();
 * request.setAttribute("books", books); } catch (SQLException e) {
 * e.printStackTrace(); request.setAttribute("books", null); // fallback }
 * request.getRequestDispatcher("/pages/admin/admin_products.jsp").forward(
 * request, response); }
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * 
 * try { Book book = new Book();
 * book.setBookId(Integer.parseInt(request.getParameter("bookId")));
 * book.setTitle(request.getParameter("title"));
 * book.setAuthor(request.getParameter("author"));
 * book.setIsbn(request.getParameter("isbn"));
 * book.setPublisher(request.getParameter("publisher"));
 * 
 * String pubDate = request.getParameter("publishedDate");
 * book.setPublishedDate(pubDate != null && !pubDate.isEmpty() ?
 * Date.valueOf(pubDate) : null);
 * 
 * book.setPrice(Double.parseDouble(request.getParameter("price")));
 * book.setStockQuantity(Integer.parseInt(request.getParameter("stock")));
 * book.setLanguage(request.getParameter("language"));
 * book.setPages(Integer.parseInt(request.getParameter("pages")));
 * book.setDescription(request.getParameter("description"));
 * book.setRating(Double.parseDouble(request.getParameter("rating")));
 * book.setStatus(request.getParameter("status"));
 * 
 * BookDAO dao = new BookDAOImpl(DBConnect.getConn()); dao.addBook(book);
 * 
 * response.sendRedirect("products");
 * 
 * } catch (Exception e) { e.printStackTrace();
 * response.getWriter().write("Error processing book input: " + e.getMessage());
 * } } }
 */