-- 19030735 Anwesh Dahal

SELECT
  customer.customer_id,
  customer.customer_name,
  address.address_id,
  address.country,
  address.zone,
  address.city,
  address.district
FROM
  address_customer
JOIN
  customer
ON
  address_customer.customer_id = customer.customer_id
JOIN
  address
ON
  address_customer.address_id = address.address_id
WHERE 
  address_customer.customer_id
IN(
SELECT
  customer_id
FROM
  product_order_customer
GROUP By
  customer_id
Having 
  count(*) > 2);