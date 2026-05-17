

SELECT COUNT(*) AS total_customers
FROM telecom_churn;

SELECT 
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2
) AS churn_rate
FROM telecom_churn;

SELECT 
Churn,
COUNT(*) AS customers
FROM telecom_churn
GROUP BY Churn;

SELECT 
Contract,
COUNT(*) AS total_customers,
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2
) AS churn_percentage

FROM telecom_churn

GROUP BY Contract

ORDER BY churn_percentage DESC;

SELECT 
CASE
WHEN tenure < 12 THEN '0-1 Year'
WHEN tenure < 24 THEN '1-2 Years'
ELSE '2+ Years'
END AS tenure_group,

COUNT(*) AS total_customers,

SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2
) AS churn_percentage

FROM telecom_churn

GROUP BY tenure_group

ORDER BY churn_percentage DESC;

SELECT 
Churn,
ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charge
FROM telecom_churn
GROUP BY Churn;

SELECT 
PaymentMethod,

COUNT(*) AS total_customers,

SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2
) AS churn_percentage

FROM telecom_churn

GROUP BY PaymentMethod

ORDER BY churn_percentage DESC;

SELECT 
InternetService,

COUNT(*) AS total_customers,

SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2
) AS churn_percentage

FROM telecom_churn

GROUP BY InternetService

ORDER BY churn_percentage DESC;

SELECT 
SeniorCitizen,

COUNT(*) AS total_customers,

SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS churned_customers,

ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),
2
) AS churn_percentage

FROM telecom_churn

GROUP BY SeniorCitizen;

