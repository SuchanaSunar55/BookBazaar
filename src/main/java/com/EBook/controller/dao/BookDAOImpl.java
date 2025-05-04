package com.EBook.controller.dao;

import com.EBook.model.Book;
import java.sql.*;
import java.util.*;
import java.math.BigDecimal;

public class BookDAOImpl implements BookDAO {
    private Connection conn;

    public BookDAOImpl(Connection conn) {
        this.conn = conn;
    }

    @Override
    public List<Book> getAllBooks() {
        List<Book> books = new ArrayList<>();
        String sql = "SELECT * FROM Book";

        try (PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Book b = new Book();
                b.setBookId(rs.getInt("Book_ID"));
                b.setTitle(rs.getString("Title"));
                b.setAuthor(rs.getString("Author"));
                b.setIsbn(rs.getString("ISBN"));
                b.setPublisher(rs.getString("Publisher"));
                b.setPublishedDate(rs.getDate("Published_Date"));
                b.setPrice(rs.getBigDecimal("Price"));
                b.setStockQuantity(rs.getInt("Stock_quantity"));
                b.setLanguage(rs.getString("Language"));
                b.setPages(rs.getInt("Pages"));
                b.setBookDescription(rs.getString("Book_Description"));
                b.setRating(rs.getBigDecimal("Rating"));
                b.setStatus(rs.getString("Status"));
                b.setCategory(rs.getString("Category"));
                b.setPhoto(rs.getString("Photo"));
                books.add(b);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return books;
    }
}
