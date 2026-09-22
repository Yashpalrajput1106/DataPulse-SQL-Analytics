--Business Question 4

--How does customer engagement vary by subscription plan, and what revenue level is associated with each plan?


SELECT S.SUBS_TYPE,COUNT(DISTINCT S.CUSTOMER_ID) AS CUSTOMERS,ROUND(AVG(U.LOGINS),2) AS AVG_LOGINS,ROUND(AVG(U.REPORTS_CREATED),2) AS AVG_REPORTS,ROUND(AVG(U.ANALYSES_RUN),2) AS AVG_ANALYSES,ROUND(AVG(S.REVENUE),2) AS AVG_REVENUE
FROM DP_SUBSCRIPTIONS S
JOIN DP_USAGE_ACTIVITY U ON S.CUSTOMER_ID=U.CUSTOMER_ID AND S.ACTIVITY_MONTH=U.ACTIVITY_MONTH
GROUP BY S.SUBS_TYPE
ORDER BY AVG_REVENUE DESC;

-- SUBS_TYPE             CUSTOMERS AVG_LOGINS AVG_REPORTS AVG_ANALYSES AVG_REVENUE
-- -------------------- ---------- ---------- ----------- ------------ -----------
-- Enterprise                    2      50.25          15        26.17      2502.5
-- Pro                           3      31.08        7.92        13.69     1510.77
-- Basic                         2       14.5           3          5.5         945