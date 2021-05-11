-- 19030735 Anwesh Dahal

SELECT
  customer.customer_name,
  product.product_name,
  S2.MTP "No Bought"
FROM
(SELECT
    product_order_customer.customer_id cid,
    product_order_customer.product_code pid,
    SUM(product_order_customer.quantity) totalP
  FROM
    product_order_customer
  GROUP BY
    product_order_customer.customer_id, 
    product_order_customer.product_code) S1
JOIN
(SELECT
  cid,
  MAX(totalP) MTP
FROM(
  SELECT
    product_order_customer.customer_id cid,
    product_order_customer.product_code pid,
    SUM(product_order_customer.quantity) totalP
  FROM
    product_order_customer
  GROUP BY
    product_order_customer.customer_id, 
    product_order_customer.product_code) S1
GROUP BY
  cid) S2
ON
  S1.cid = S2.cid and S1.totalP = S2.MTP
JOIN
  customer
ON
  S1.cid = customer.customer_id
JOIN
  product
ON
  S1.pid = product.product_code;