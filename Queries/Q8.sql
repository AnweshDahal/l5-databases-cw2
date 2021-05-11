-- 19030735 ANWESH DAHAL

SELECT
  product.product_name,
  product.unit_price,
  S1.total "Total Sold",
  S1.total * unit_price "Total Earned"
FROM
  product
JOIN
  (SELECT
    product_code,
    SUM(quantity) total
  FROM
    product_order_customer
  GROUP BY
    product_code) S1
ON
  product.product_code = S1.product_code;