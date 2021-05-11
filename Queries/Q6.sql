-- 19030735 Anwesh Dahal

SELECT
  order_details.order_id,
  customer.customer_name,
  product.product_name
FROM 
  product_order_customer
JOIN
  customer
ON
  product_order_customer.customer_id = customer.customer_id
JOIN
  order_details
ON
  product_order_customer.order_id = order_details.order_id
JOIN
  product
ON
  product_order_customer.product_code = product.product_code
WHERE
  order_details.order_date = '25-JUN-20';