package com.EBook.model;

import java.math.BigDecimal;
import java.sql.Date;

public class Book {
    private int bookId;
    private String title;
    private String author;
    private String isbn;
    private String publisher;
    private Date publishedDate;
    private BigDecimal price;
    private int stockQuantity;
    private String language;
    private int pages;
    private String bookDescription;
    private BigDecimal rating;
    private String status;
    private String category;
    private String photo;

    // Getters and Setters
    public int getBookId() { return bookId; }
    public void setBookId(int bookId) { this.bookId = bookId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public String getIsbn() { return isbn; }
    public void setIsbn(String isbn) { this.isbn = isbn; }

    public String getPublisher() { return publisher; }
    public void setPublisher(String publisher) { this.publisher = publisher; }

    public Date getPublishedDate() { return publishedDate; }
    public void setPublishedDate(Date publishedDate) { this.publishedDate = publishedDate; }

    public BigDecimal getPrice() { return price; }
    public void setPrice(BigDecimal price) { this.price = price; }

    public int getStockQuantity() { return stockQuantity; }
    public void setStockQuantity(int stockQuantity) { this.stockQuantity = stockQuantity; }

    public String getLanguage() { return language; }
    public void setLanguage(String language) { this.language = language; }

    public int getPages() { return pages; }
    public void setPages(int pages) { this.pages = pages; }

    public String getBookDescription() { return bookDescription; }
    public void setBookDescription(String bookDescription) { this.bookDescription = bookDescription; }

    public BigDecimal getRating() { return rating; }
    public void setRating(BigDecimal rating) { this.rating = rating; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public String getPhoto() { return photo; }
    public void setPhoto(String photo) { this.photo = photo; }

    @Override
    public String toString() {
        return "Book [bookId=" + bookId + ", title=" + title + ", author=" + author + ", isbn=" + isbn +
               ", publisher=" + publisher + ", publishedDate=" + publishedDate + ", price=" + price +
               ", stockQuantity=" + stockQuantity + ", language=" + language + ", pages=" + pages +
               ", bookDescription=" + bookDescription + ", rating=" + rating + ", status=" + status +
               ", category=" + category + ", photo=" + photo + "]";
    }
}
