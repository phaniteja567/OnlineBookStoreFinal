package com.onlineBookStore.service;

import com.onlineBookStore.model.Cart;
import com.onlineBookStore.model.CartItem;


public interface CartItemService {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByItemId (int itemId);
}
