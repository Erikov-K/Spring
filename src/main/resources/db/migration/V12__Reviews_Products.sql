SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS reviews_products;


CREATE TABLE reviews_products (
  product_id               INT(11) NOT NULL,
  review_id               INT(11) NOT NULL,

  PRIMARY KEY (product_id,review_id),

--  KEY FK_ROLE_idx (role_id),

  CONSTRAINT FK_PRODUCT_ID_01 FOREIGN KEY (product_id)
  REFERENCES products (id)
  ON DELETE NO ACTION ON UPDATE NO ACTION,

  CONSTRAINT FK_REVIEW_ID FOREIGN KEY (review_id)
  REFERENCES reviews (id)
  ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = UTF8MB4;


SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO reviews_products (product_id, review_id)
VALUES
(1, 1),
(1, 2),
(1, 3),

(2, 2),

(3, 1),
(3, 3);
