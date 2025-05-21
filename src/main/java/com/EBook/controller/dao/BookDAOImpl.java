package com.EBook.controller.dao;

import com.EBook.model.Book;
import java.sql.*;
import java.util.*;
import java.math.BigDecimal;

public class BookDAOImpl implements BookDAO {
	private Connection conn;

	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public List<Book> getAllBooks() {
		List<Book> books = new ArrayList<>();
		String sql = "SELECT * FROM Book";

		try (PreparedStatement ps = conn.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

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

	@Override
	public List<Book> searchBooks(String query) {
		List<Book> books = new ArrayList<>();
		String sql = "SELECT * FROM Book WHERE Title LIKE ? OR Author LIKE ?";

		try (PreparedStatement ps = conn.prepareStatement(sql)) {
			String searchPattern = "%" + query + "%";
			ps.setString(1, searchPattern);
			ps.setString(2, searchPattern);

			try (ResultSet rs = ps.executeQuery()) {
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
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return books;
	}

	@Override
	public boolean addBooks(Book b) {
		boolean f = false;
		try {
			String sql = "INSERT INTO book (Title, Author, ISBN, Publisher, Published_Date, Price, Stock_quantity, Language, Pages, Book_Description, Rating, Status, Category, Photo) "
					+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getTitle());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getIsbn());
			ps.setString(4, b.getPublisher());
			ps.setDate(5, b.getPublishedDate());
			ps.setBigDecimal(6, b.getPrice());
			ps.setInt(7, b.getStockQuantity());
			ps.setString(8, b.getLanguage());
			ps.setInt(9, b.getPages());
			ps.setString(10, b.getBookDescription());
			ps.setBigDecimal(11, b.getRating());
			ps.setString(12, b.getStatus());
			ps.setString(13, b.getCategory());
			ps.setString(14, b.getPhoto());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
