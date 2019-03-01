package com.geekbrains.springbootproject.controllers;

import com.geekbrains.springbootproject.entities.Pager;
import com.geekbrains.springbootproject.entities.Product;
import com.geekbrains.springbootproject.repositories.ProductsRepository;
import com.geekbrains.springbootproject.services.ProductsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@Controller
public class ProductsController {

    private static final int BUTTONS_TO_SHOW = 5;
    private static final int INITIAL_PAGE = 0;
    private static final int INITIAL_PAGE_SIZE = 5;
    private static final int[] PAGE_SIZES = {5, 10, 20};

    private ProductsService productsService;

    @Autowired
    public void setProductsService(ProductsService productsService) {
        this.productsService = productsService;
    }

    @GetMapping("/")
    public String showHomePage(Model model, @RequestParam(value = "minCost", required = false) Double minCost,
                               @RequestParam(value = "maxCost", required = false) Double maxCost,
                               @RequestParam("pageSize") Optional<Integer> pageSize,
                               @RequestParam("pageNumber") Optional<Integer> pageNumber) {

        // Evaluate page size. If requested parameter is null, return initial
        // page size
        int evalPageSize = pageSize.orElse(INITIAL_PAGE_SIZE);

        // Evaluate page. If requested parameter is null or less than 0 (to
        // prevent exception), return initial size. Otherwise, return value of
        // param. decreased by 1.
        int evalPage = (pageNumber.orElse(0) < 1) ? INITIAL_PAGE : pageNumber.get() - 1;

//        Page<Product> page = productsService.getProductsByCost(PageRequest.of(0, 5), min, max);
        Page<Product> page = productsService.getProductsByCost(PageRequest.of(evalPage, evalPageSize), minCost, maxCost);
        Pager pager = new Pager(page.getTotalPages(), page.getNumber(), BUTTONS_TO_SHOW);
        model.addAttribute("minCost", minCost);
        model.addAttribute("maxCost", maxCost);
        model.addAttribute("page", page);

        model.addAttribute("selectedPageSize", evalPageSize);
        model.addAttribute("pageSizes", PAGE_SIZES);
        model.addAttribute("pager", pager);

        return "index";
    }

    @GetMapping("/info")
    public String showInfoPage(Model model) {
        return "info";
    }

    @GetMapping("/product/edit/{id}")
    public String addProductPage(Model model, @PathVariable("id") Long id) {
        Product product = productsService.findById(id);
        if (product == null) {
            product = new Product();
        }
        model.addAttribute("product", product);
        return "edit-product";
    }

    @GetMapping("/international")
    public String internationalPage() {
        return "international";
    }

    // Binding Result после @ValidModel !!!
    @PostMapping("/product/edit")
    public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return "edit-product";
        }
        Product existing = productsService.findByTitle(product.getTitle());
        if (existing != null && !product.getId().equals(existing.getId())) {
            // product.setTitle(null);
            model.addAttribute("product", product);
            model.addAttribute("productCreationError", "Product title already exists");
            return "edit-product";
        }
        productsService.saveOrUpdate(product);
        return "redirect:/";
    }
}
