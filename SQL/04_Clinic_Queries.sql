SELECT sales_channel, SUM(amount) AS total_revenue
FROM clinic_sales
GROUP BY sales_channel;

SELECT MONTH(sale_date) AS month, SUM(amount) AS revenue
FROM clinic_sales
GROUP BY MONTH(sale_date);

SELECT 
  MONTH(s.sale_date) AS month,
  SUM(s.amount) - SUM(e.amount) AS profit
FROM clinic_sales s
JOIN expenses e 
  ON MONTH(s.sale_date) = MONTH(e.expense_date)
GROUP BY MONTH(s.sale_date);

SELECT MONTH(sale_date) AS month, SUM(amount) AS revenue
FROM clinic_sales
GROUP BY MONTH(sale_date)
ORDER BY revenue DESC
LIMIT 1;

SELECT MONTH(expense_date) AS month, SUM(amount) AS total_expense
FROM expenses
GROUP BY MONTH(expense_date)
ORDER BY total_expense ASC
LIMIT 1;

