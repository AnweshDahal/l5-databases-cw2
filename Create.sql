-- Create a new User
CREATE USER smart IDENTIFIED BY smart;
GRANT CONNECT, RESOURCE TO smart;

CONNECT smart/smart;

-- customer table

CREATE TABLE 
  customer (
    customer_id VARCHAR2(3) priMary KEY, 
    customer_name VARCHAR2(20) NOT NULL
  );
DESC customer;

-- address

CREATE TABLE 
  address (
    address_id VARCHAR2(5) PRIMARY KEY, 
    country VARCHAR2(15) NOT NULL, 
    zone VARCHAR2(15) NOT NULL, 
    city VARCHAR2(15) NOT NULL
  );
DESC address;

-- product

CREATE TABLE 
  product (
    product_code VARCHAR2(3) PRIMARY KEY, 
    product_name VARCHAR2(10) NOT NULL, 
    unit_price NUMBER NOT NULL
  );
DESC product;

-- order

CREATE TABLE 
  order_details (
    order_id VARCHAR2(5) PRIMARY KEY, 
    order_date DATE NOT NULL
  );
DESC order_details;

-- address_customer

CREATE TABLE 
  address_customer (
    address_id VARCHAR2(5), 
    customer_id VARCHAR2(3), 
    PRIMARY KEY (address_id, customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
  );
DESC address_customer;

-- product_order_customer

CREATE TABLE 
  product_order_customer(
    product_code VARCHAR2(3),
    order_id VARCHAR2(5),
    customer_id VARCHAR2(3),
    quantity NUMBER NOT NULL,
    PRIMARY KEY (product_code, order_id, customer_id),
    FOREIGN KEY (product_code) REFERENCES product(product_code),
    FOREIGN KEY (order_id) REFERENCES order_details(order_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
  );
  DESC product_order_customer;