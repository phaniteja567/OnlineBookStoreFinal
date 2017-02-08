package com.onlineBookStore.dao;

import com.onlineBookStore.model.Cart;
import com.onlineBookStore.model.CartItem;


public interface CartItemDao {

    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByItemId (int itemId);

}
