package com.geekbrains.springbootproject.utils;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductsErrorResponse {
    private int status;
    private String message;
    private long timestamp;
}
