/sql/01_cohort_analysis_queries.sql

--Example SQL for preparing cohorts
SELECT
    customer_id,
    MIN(order_purchase_timestamp) AS first_purchase_date
FROM orders
GROUP BY customer_id;

-- SQL for monthly cohorts
SELECT
    customer_id,
    DATE_TRUNC('month', order_purchase_timestamp) AS order_month,
    DATE_TRUNC('month', MIN(order_purchase_timestamp)) OVER (PARTITION BY customer_id) AS cohort_month
FROM orders;

-- SQL for count of returning customers
SELECT
    cohort_month,
    order_month,
    COUNT(DISTINCT customer_id) AS customers
FROM cohort_table
GROUP BY cohort_month, order_month
ORDER BY cohort_month, order_month;

