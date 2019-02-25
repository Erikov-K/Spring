package com.geekbrains.springbootproject.services;

import com.geekbrains.springbootproject.entities.Product;
import com.geekbrains.springbootproject.repositories.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ProductService {
    public List<Product> getProductsByCost;
    private ProductRepository productRepository;

    @Autowired
    public void setProductRepository(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<Product> getAllProducts() {
        return (List<Product>)productRepository.findAll();
    }


    public List<Product> getProductsByCost(Long cost) {
        return productRepository.findByCost(cost);
    }
}
