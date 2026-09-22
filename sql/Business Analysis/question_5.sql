--Business Question 5

--Is increased support activity associated with declining customer usage?

SELECT U.CUSTOMER_ID,U.ACTIVITY_MONTH,U.LOGINS,NVL(S.TICKETS_RAISED,0) AS TICKETS_RAISED
FROM DP_USAGE_ACTIVITY U
LEFT JOIN DP_SUPPORT_TICKETS S ON U.CUSTOMER_ID=S.CUSTOMER_ID AND U.ACTIVITY_MONTH=S.ACTIVITY_MONTH
WHERE U.CUSTOMER_ID IN ('C002','C005')
ORDER BY U.CUSTOMER_ID,U.ACTIVITY_MONTH;

-- CUSTOMER_I ACTIVITY_     LOGINS TICKETS_RAISED
-- ---------- --------- ---------- --------------
-- C002       01-JAN-26         48              0
-- C002       01-FEB-26         51              0
-- C002       01-MAR-26         47              4
-- C002       01-APR-26         38              7
-- C002       01-MAY-26         29              5
-- C002       01-JUN-26         23              2
-- C005       01-JAN-26         62              0
-- C005       01-FEB-26         66              3
-- C005       01-MAR-26         68              4
-- C005       01-APR-26         67              8
-- C005       01-MAY-26         55              6
-- C005       01-JUN-26         49              4


SELECT U.CUSTOMER_ID,ROUND(AVG(U.LOGINS),2) AS AVG_LOGINS,ROUND(AVG(NVL(S.TICKETS_RAISED,0)),2) AS AVG_TICKETS
FROM DP_USAGE_ACTIVITY U
LEFT JOIN DP_SUPPORT_TICKETS S ON U.CUSTOMER_ID=S.CUSTOMER_ID AND U.ACTIVITY_MONTH=S.ACTIVITY_MONTH
GROUP BY U.CUSTOMER_ID
ORDER BY AVG_TICKETS DESC;




-- CUSTOMER_I AVG_LOGINS AVG_TICKETS
-- ---------- ---------- -----------
-- C005            61.17        4.17
-- C002            39.33           3
-- C004             19.4          .6
-- C001            29.67          .5
-- C003            31.17         .17