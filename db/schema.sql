-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;
USE ecommerce_db;

CREATE TABLE Category (
    id: INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    category_name: VARCHAR(30) NOT NULL
);

CREATE TABLE Product (
    id: INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_name: VARCHAR(30) NOT NULL,
    price: DECIMAL NOT NULL,
    stock: INTEGER NO NULL DEFAULT 10,
    category_id: INTEGER,
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category(id)  
);

CREATE TABLE Tag (
    id: INTEGER NO NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name: VARCHAR(30)
);

CREATE TABLE ProductTag (
    id: INTEGER NO NULL PRIMARY KEY AUTO_INCREMENT,
    product_id: INTEGER,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product(id),
    tag_id: INTEGER,
    CONSTRAINT fk_tag FOREIGN KEY (tag_id) REFERENCES tag(id)
);


