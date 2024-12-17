CREATE DATABASE IF NOT EXISTS shop;
USE shop;

CREATE TABLE IF NOT EXISTS users(
    id INT NOT NULL AUTO_INCREMENT,
    login VARCHAR(50) NOT NULL,
    password VARCHAR(200) NOT NULL,
    name VARCHAR(150) NOT NULL,
    address TEXT NOT NULL,
    email VARCHAR(200) NOT NULL,
    phone VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS individuals(
    user_id INT NOT NULL,
    cpf BIGINT NOT NULL UNIQUE,
    UNIQUE (cpf),
    PRIMARY KEY (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS companies(
    user_id INT NOT NULL,
    cnpj BIGINT NOT NULL,
    UNIQUE (cnpj),
    PRIMARY KEY (user_id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS products(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    quantity INT NOT NULL,
    price DOUBLE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS transactions(
    transaction_id INT NOT NULL,
    quantity INT NOT NULL,
    product_id INT NOT NULL,
    seller_cnpj BIGINT NOT NULL,
    buyer_cpf BIGINT NOT NULL,
    PRIMARY KEY (transaction_id),
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (seller_cnpj) REFERENCES companies(cnpj),
    FOREIGN KEY (buyer_cpf) REFERENCES individuals(cpf)
);

USE mysql;



CREATE USER 'sasha'@'%' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON shop.* TO 'sasha'@'%';