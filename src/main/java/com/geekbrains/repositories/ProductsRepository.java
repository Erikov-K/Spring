package com.geekbrains.repositories;

import com.geekbrains.entities.Product;
import org.springframework.stereotype.Component;

@Component
public class ProductsRepository {
    // Это заглушка, на самом деле достаем из БД
    public Product findProductById(Long id) {
        Product product = new Product();
        product.setProductID(id);
        product.setProductTitle("Product Title for product with id " + id);
        return product;
    }
}
