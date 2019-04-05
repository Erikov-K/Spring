SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS reviews;


CREATE TABLE reviews (
  id                    INT(11) NOT NULL AUTO_INCREMENT,
  review                  VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET = UTF8MB4;


SET FOREIGN_KEY_CHECKS = 1;


INSERT INTO reviews (review) VALUES ('Review #1');
INSERT INTO reviews (review) VALUES ('Review #2');
INSERT INTO reviews (review) VALUES ('Review #3');


