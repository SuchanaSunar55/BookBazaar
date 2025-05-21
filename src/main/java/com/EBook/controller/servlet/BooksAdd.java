package com.EBook.controller.servlet;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.EBook.controller.controller.database.DBConnect;
import com.EBook.controller.dao.BookDAOImpl;
import com.EBook.model.Book;

@WebServlet("/add_books")
@MultipartConfig
public class BooksAdd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String title = req.getParameter("title");
            String author = req.getParameter("author");
            String isbn = req.getParameter("isbn");
            String publisher = req.getParameter("publisher");

            String publishedDateStr = req.getParameter("publishedDate");
            Date publishedDate = Date.valueOf(publishedDateStr); // yyyy-mm-dd

            BigDecimal price = new BigDecimal(req.getParameter("price"));
            int stockQuantity = Integer.parseInt(req.getParameter("stockQuantity"));
            String language = req.getParameter("language");
            int pages = Integer.parseInt(req.getParameter("pages"));
            String bookDescription = req.getParameter("bookDescription");
            BigDecimal rating = new BigDecimal(req.getParameter("rating"));
            String status = req.getParameter("status");
            String category = req.getParameter("category");
            Part part = req.getPart("photo");
            String fileName = part.getSubmittedFileName();

            // Construct the Book object
            Book b = new Book();
            b.setTitle(title);
            b.setAuthor(author);
            b.setIsbn(isbn);
            b.setPublisher(publisher);
            b.setPublishedDate(publishedDate);
            b.setPrice(price);
            b.setStockQuantity(stockQuantity);
            b.setLanguage(language);
            b.setPages(pages);
            b.setBookDescription(bookDescription);
            b.setRating(rating);
            b.setStatus(status);
            b.setCategory(category);
            b.setPhoto(fileName);

            System.out.println("Book added: " + b);

            // TODO: Save book to DB and handle file upload

            BookDAOImpl dao= new BookDAOImpl(DBConnect.getConn());
            
            
			/* System.out.println(path); */
            
			/*  */
            
            
            
            
			
			  boolean f=dao.addBooks(b);
			  
			  HttpSession session= req.getSession(); 
			  if(f) {
				  String path=getServletContext().getRealPath("")+ "book";
				  File file= new File(path);
				  part.write(path+File.separator+fileName);
				  
			  session.setAttribute("succMsg", "Book Added Successfully");
			  resp.sendRedirect("/EBook/pages/admin/add_books.jsp"); }else {
			  session.setAttribute("failedMsg", "Something wrong on Server");
			  resp.sendRedirect("/EBook/pages/admin/add_books.jsp"); }
			 
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
