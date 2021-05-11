-- 19030735 ANWESH DAHAL

SELECT
  product.product_name,
  S1.total
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
  product.product_code = S1.product_code
WHERE
  total = (
    SELECT
      MAX(total2)
    FROM(
      SELECT
        SUM(quantity) total2
      FROM
        product_order_customer
      GROUP BY
        product_code
    )
  );
