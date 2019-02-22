package com.geekbrains.springbootproject.controllers;

import com.geekbrains.springbootproject.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {
    private ProductService productService;

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/")
    public String showHomePage(Model model) {
        model.addAttribute("products", productService.getAllProducts());
        return "index";
    }

    @GetMapping("/{cost}")
    public String showProductByCost(Model model, @PathVariable("cost") Long cost) {
        model.addAttribute("products", productService.getProductsByCost(cost));
        System.out.println(productService.getProductsByCost(cost));
        return "index";
    }
}
