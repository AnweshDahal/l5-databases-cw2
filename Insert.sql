-- customer
INSERT INTO customer VALUES('C1', 'Saroj Karki');
INSERT INTO customer VALUES('C2', 'Rohit Pandey');
INSERT INTO customer VALUES('C3', 'Santos Katuwal');
INSERT INTO customer VALUES('C4', 'Bidur Khanal');
INSERT INTO customer VALUES('C5', 'Kusum Tamang');

SELECT * FROM customer;

-- Order
INSERT INTO order_details VALUES('Ord1', '20-JAN-20');
INSERT INTO order_details VALUES('Ord2', '4-MAY-20');
INSERT INTO order_details VALUES('Ord3', '4-MAY-20');
INSERT INTO order_details VALUES('Ord4', '25-JUN-20');
INSERT INTO order_details VALUES('Ord5', '21-JUL-20');
INSERT INTO order_details VALUES('Ord6', '8-JUL-20');
INSERT INTO order_details VALUES('Ord7', '3-APR-20');

SELECT * FROM order_details;

-- product
INSERT INTO product VALUES('P1', 'Noodles', 30);
INSERT INTO product VALUES('P2', 'Rice', 900);
INSERT INTO product VALUES('P3', 'Coffee', 400);
INSERT INTO product VALUES('P4', 'Oil', 200);
INSERT INTO product VALUES('P5', 'Biscuits', 60);
INSERT INTO product VALUES('P6', 'Dishwasher', 90);

SELECT * FROM product;

-- product_order_customer
INSERT INTO product_order_customer VALUES('P3', 'Ord1', 'C1', 3);
INSERT INTO product_order_customer VALUES('P4', 'Ord1', 'C1', 4);
INSERT INTO product_order_customer VALUES('P5', 'Ord2', 'C2', 2);
INSERT INTO product_order_customer VALUES('P3', 'Ord3', 'C1', 1);
INSERT INTO product_order_customer VALUES('P2', 'Ord4', 'C3', 5);
INSERT INTO product_order_customer VALUES('P4', 'Ord4', 'C3', 4);
INSERT INTO product_order_customer VALUES('P1', 'Ord5', 'C4', 4);
INSERT INTO product_order_customer VALUES('P6', 'Ord5', 'C4', 2);
INSERT INTO product_order_customer VALUES('P6', 'Ord6', 'C5', 1);
INSERT INTO product_order_customer VALUES('P3', 'Ord7', 'C3', 6);

SELECT * FROM product_order_customer;

-- address
INSERT INTO address VALUES('Add1', 'Nepal', 'Koshi', 'Itahari');
INSERT INTO address VALUES('Add2', 'Nepal', 'Mechi', 'Jhapa');
INSERT INTO address VALUES('Add3', 'Nepal', 'Bagmati', 'Kathmandu');
INSERT INTO address VALUES('Add4', 'Nepal', 'Bagmati', 'Lalitpur');
INSERT INTO address VALUES('Add5', 'Nepal', 'Koshi', 'Dharan');

SELECT * FROM address;

-- address_customer
INSERT INTO address_customer VALUES('Add1', 'C1');
INSERT INTO address_customer VALUES('Add2', 'C1');
INSERT INTO address_customer VALUES('Add2', 'C2');
INSERT INTO address_customer VALUES('Add3', 'C3');
INSERT INTO address_customer VALUES('Add4', 'C3');
INSERT INTO address_customer VALUES('Add5', 'C3');
INSERT INTO address_customer VALUES('Add2', 'C4');
INSERT INTO address_customer VALUES('Add1', 'C4');
INSERT INTO address_customer VALUES('Add5', 'C5');

SELECT * FROM address_customer;