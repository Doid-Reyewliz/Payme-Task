WITH MonthlySales AS
 (SELECT to_char(st.purchase_date, 'YYYY-MM') AS sales_month,
         SUM(st.quantity_purchased * p.price) AS monthly_sales_amount,
         COUNT(DISTINCT st.transaction_id) AS monthly_transaction_count
    FROM sales_transactions st, products p
   WHERE st.product_id = p.product_id
   GROUP BY to_char(st.purchase_date, 'YYYY-MM'))
   
SELECT ms.sales_month,
       ms.monthly_sales_amount,
       ms.monthly_transaction_count,
       AVG(ms.monthly_sales_amount) OVER(ORDER BY ms.sales_month ASC ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS three_month_moving_avg
  FROM MonthlySales ms
 ORDER BY ms.sales_month;
