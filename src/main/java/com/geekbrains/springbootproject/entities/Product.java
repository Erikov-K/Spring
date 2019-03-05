package com.geekbrains.springbootproject.entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "products")
@Data
@NoArgsConstructor
public class Product {

    public static final int TITLE_LENGTH = 3;
    public static final int MIN_COST = 1;

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "id")
    private Long id;

    @NotNull(message = "Title cannot be null")
    @Size(min = TITLE_LENGTH, message = "Title length must be greater than " + TITLE_LENGTH + " symbols;")
    @Column(name = "title")
    private String title;

    @NotNull(message = "Cost cannot be null")
    @Min(value = MIN_COST, message = "Cost must be greater than " + MIN_COST + " ;")
    @Column(name = "cost")
    private double cost;
}
