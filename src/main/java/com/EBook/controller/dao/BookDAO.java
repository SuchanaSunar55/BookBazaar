package com.EBook.controller.dao;

import com.EBook.model.Book;
import java.util.List;

public interface BookDAO {
    
    boolean addBooks(Book b);

    List<Book> getAllBooks();

    List<Book> searchBooks(String query); // ✅ Add this method
}
