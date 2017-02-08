package com.onlineBookStore.service;

import com.onlineBookStore.model.Cart;


public interface CartService {

    Cart getCartById (int cartId);

    void update(Cart cart);
}
