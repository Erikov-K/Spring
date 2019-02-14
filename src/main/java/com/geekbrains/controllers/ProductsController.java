package com.geekbrains.controllers;

import com.geekbrains.entities.Product;
import com.geekbrains.services.ProductsService;
import com.geekbrains.services.StudentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/products")
public class ProductsController {
    private ProductsService productsService;

    @Autowired
    public void setProductsService(StudentsService studentsService) {
        this.productsService = productsService;
    }

    // http://localhost:8189/app/products/showForm
    @RequestMapping("/showForm")
    public String showSimpleForm(Model model) {
        Product product = new Product();
        model.addAttribute("product", product);
        return "product-form";
    }

        // http://localhost:8189/app/students/processForm
        @RequestMapping("/processForm")
        public String processForm(@ModelAttribute("product") Product product) {
            System.out.println("ProductID: " + product.getProductID() + "; " +
                                "ProductTitle: " + product.getProductTitle() + "; " +
                                "ProductCost: " + product.getProductCost());
            return "product-form-result";
        }

        /*
        // http://localhost:8189/app/students/showStudentById?id=5
        @RequestMapping(path="/showStudentById", method= RequestMethod.GET)
        public String showStudentById(Model model, @RequestParam Long id) {
            Student student = studentsService.getStudentById(id);
            model.addAttribute("student", student);
            return "student-form-result";
        }

        // http://localhost:8189/app/students/getStudentById?id=20
        @RequestMapping(path="/getStudentById", method=RequestMethod.GET)
        @ResponseBody
        public Student getStudentById(@RequestParam Long id) {
            Student student = studentsService.getStudentById(id);
            return student;
        }

        // http://localhost:8189/app/students/getStudentById/10
        @RequestMapping(path="/getStudentById/{sid}", method=RequestMethod.GET)
        @ResponseBody
        public Student getStudentByIdFromPath(@PathVariable("sid") Long id) {
            Student student = studentsService.getStudentById(id);
            return student;
        }
        */
}

