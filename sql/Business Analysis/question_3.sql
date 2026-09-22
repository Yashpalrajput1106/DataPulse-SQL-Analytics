--Business Question 3

--Which customers contribute the most subscription revenue, and how does their revenue change over the analysis period?

SELECT CUSTOMER_ID,SUM(REVENUE) AS TOTAL_REVENUE,MIN(REVENUE) KEEP (DENSE_RANK FIRST ORDER BY ACTIVITY_MONTH) AS START_REVENUE,MAX(REVENUE) KEEP (DENSE_RANK LAST ORDER BY ACTIVITY_MONTH) AS END_REVENUE,ROUND((MAX(REVENUE) KEEP (DENSE_RANK LAST ORDER BY ACTIVITY_MONTH)-MIN(REVENUE) KEEP (DENSE_RANK FIRST ORDER BY ACTIVITY_MONTH))/MIN(REVENUE) KEEP (DENSE_RANK FIRST ORDER BY ACTIVITY_MONTH)*100,2) AS REVENUE_CHANGE_PCT
FROM DP_SUBSCRIPTIONS
GROUP BY CUSTOMER_ID
ORDER BY TOTAL_REVENUE DESC;

-- CUSTOMER_I TOTAL_REVENUE START_REVENUE END_REVENUE REVENUE_CHANGE_PCT
-- ---------- ------------- ------------- ----------- ------------------
-- C005               15670          2620        2490              -4.96
-- C002               14360          2480        2230             -10.08
-- C003                9070          1500        1520               1.33
-- C001                8180           980        1630              66.33
-- C004                6170           870        1550              78.16