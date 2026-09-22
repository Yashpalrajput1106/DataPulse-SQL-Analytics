--Business Question 1

-- How does customer usage differ across customers?

SELECT CUSTOMER_ID,SUM(LOGINS) AS TOTAL_LOGINS,SUM(REPORTS_CREATED) AS TOTAL_REPORTS,SUM(ANALYSES_RUN) AS TOTAL_ANALYSES
FROM DP_USAGE_ACTIVITY
GROUP BY CUSTOMER_ID
ORDER BY TOTAL_LOGINS DESC;

CUSTOMER_I TOTAL_LOGINS TOTAL_REPORTS TOTAL_ANALYSES
---------- ------------ ------------- --------------
C005                367           115            199
C002                236            65            115
C003                187            51             83
C001                178            43             79
C004                 97            21             38

-- we need to compare customers based on their overall usage.

-- We'll calculate:

-- Total logins
-- Total reports created
-- Total analyses run

-- Because each customer has multiple monthly records, we'll use SUM() and GROUP BY.