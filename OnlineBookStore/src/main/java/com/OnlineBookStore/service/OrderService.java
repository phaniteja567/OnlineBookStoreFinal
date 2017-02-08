package com.onlineBookStore.service;

import com.onlineBookStore.model.UserOrder;


public interface OrderService {

    void addOrder(UserOrder order);

    double getOrderGrandTotal(int cartId);
}
