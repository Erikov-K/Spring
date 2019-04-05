package com.geekbrains.springbootproject.entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Collection;
import java.util.List;


@Entity
@Data
@Table(name = "reviews")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "review")
    private String review;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "reviews_products",
            joinColumns = @JoinColumn(name = "review_id"),
            inverseJoinColumns = @JoinColumn(name = "product_id"))
    private Collection<Review> reviews;


    public Review() {
    }

    public Review(String name) {
        this.review = review;
    }

    @Override
    public String toString() {
        return "Review{" + "id=" + id + ", review='" + review + '\'' + '}';
    }
}
