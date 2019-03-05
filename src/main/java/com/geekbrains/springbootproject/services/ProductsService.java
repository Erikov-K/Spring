package com.geekbrains.springbootproject.services;

import com.geekbrains.springbootproject.entities.Product;
import com.geekbrains.springbootproject.repositories.ProductsRepository;
import com.geekbrains.springbootproject.utils.ProductNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductsService {
    private ProductsRepository productsRepository;

    @Autowired
    public void setProductsRepository(ProductsRepository productsRepository) {
        this.productsRepository = productsRepository;
    }

    public Product findByTitle(String title) {
        return productsRepository.findOneByTitle(title);
    }

    public Product findById(Long id) {
        Optional<Product> result = productsRepository.findById(id);
        if (!result.isPresent()) {
            throw new ProductNotFoundException("Product with id = " + id + " not found");
        }
        return productsRepository.findById(id).orElse(null);
    }

    public List<Product> getAllProducts() {
        return (List<Product>) productsRepository.findAll();
    }

    public Page<Product> getProductsByCost(Pageable pageable, Double minCost, Double maxCost) {
        if (minCost == null) {
            minCost = 0.0;
        }
        if (maxCost == null) {
            maxCost = Double.MAX_VALUE;
        }
        return productsRepository.findAllByCostBetween(pageable, minCost, maxCost);
    }

    public Product saveOrUpdate(Product product) {
        return productsRepository.save(product);
    }

    // Methods for RestAPI
    public Product save(Product product) {
        if (product.getCost() < product.MIN_COST || product.getTitle().length() < product.TITLE_LENGTH ) {
            throw new ProductNotFoundException(" Product field validation exception. " +
                                                " Cost must be greater than " + product.MIN_COST +
                                                " Title length must be greater than " + product.TITLE_LENGTH + " symbols;");
        }
        product.setId(0L);
        return productsRepository.save(product);
    }

    public Product update(Product product) {
        return productsRepository.save(product);
    }

    public int delete(Product product) {
        Optional<Product> result = productsRepository.findById(product.getId());
        if (!result.isPresent()) {
            throw new ProductNotFoundException("Product with id = " + product.getId() + " not found");
        }
        productsRepository.deleteById(product.getId());
        return 200;
    }
}
