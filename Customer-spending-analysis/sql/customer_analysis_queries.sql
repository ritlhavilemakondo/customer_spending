USE customer_analysis;
SHOW TABLES;
SELECT*
FROM customer
LIMIT 10;
SELECT COUNT(*) AS total_records
FROM customer;
select *
from customer
where Spending_Score > 80;
SELECT ID, Transaction_Amount
from customer
order by Transaction_Amount desc
limit 10;
select
Age_Group,
avg(Transaction_Amount) AS avg_spend,
count(*) as num_customers
from customer
group by Age_Group
order by avg_spend DESC;
SELECT 
Income_Bracket,
AVG(Spending_Score) AS avg_score
FROM customer
GROUP BY Income_Bracket
ORDER BY avg_score DESC;
SELECT
    CASE
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age <= 25 THEN '18-25'
        WHEN Age <= 35 THEN '26-35'
        WHEN Age <= 45 THEN '36-45'
        WHEN Age <= 60 THEN '46-60'
        ELSE '60+'
    END AS Age_Group,
    AVG(Transaction_Amount) AS avg_spend,
    COUNT(*) AS num_customers
FROM customer
GROUP BY
    CASE
        WHEN Age < 18 THEN 'Under 18'
        WHEN Age <= 25 THEN '18-25'
        WHEN Age <= 35 THEN '26-35'
        WHEN Age <= 45 THEN '36-45'
        WHEN Age <= 60 THEN '46-60'
        ELSE '60+'
    END
ORDER BY avg_spend DESC;
SELECT 
    Age_Group,
    COUNT(*) AS num_customers
FROM customer
GROUP BY Age_Group
HAVING COUNT(*) > 100;
