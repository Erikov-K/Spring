package com.geekbrains.springbootproject.repositories;

import com.geekbrains.springbootproject.entities.Product;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends CrudRepository<Product, Long> {
    List<Product> findByCost(Long cost);
}
