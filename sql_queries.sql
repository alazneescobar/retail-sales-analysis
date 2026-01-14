
--Total revenue and average order value 
SELECT 
	COUNT(*) AS total_transactions,
	SUM(total_amount) AS total_revenue,
	ROUND(AVG(total_amount), 2) AS avg_order_value
FROM sales;

-- Monthly revenue trend 
SELECT
	strftime('%Y-%m', date) AS year_month,
	SUM(total_amount) AS monthly_revenue
	FROM sales 
	GROUP BY year_month
	ORDER BY year_month;

--Revenue by product category
SELECT
	product_category,
	SUM(total_amount) AS category_revenue
FROM sales
GROUP BY product_category
ORDER BY category_revenue DESC;
