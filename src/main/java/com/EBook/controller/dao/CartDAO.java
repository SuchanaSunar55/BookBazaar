package com.EBook.controller.dao;

import com.EBook.model.Cart;
import java.util.List;

public interface CartDAO {
    boolean addToCart(Cart cart);
    List<Cart> getCartByUser(int userId);
}
