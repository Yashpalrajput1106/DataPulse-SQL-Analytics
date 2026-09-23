--Enterprise customers have high logins, and because revenue depends on logins, are high login charges causing customers to reduce usage?

SELECT S.CUSTOMER_ID,S.ACTIVITY_MONTH,U.LOGINS,(S.REVENUE-2000) AS USAGE_CHARGE,S.REVENUE
FROM DP_SUBSCRIPTIONS S
JOIN DP_USAGE_ACTIVITY U ON S.CUSTOMER_ID=U.CUSTOMER_ID AND S.ACTIVITY_MONTH=U.ACTIVITY_MONTH
WHERE S.SUBS_TYPE='Enterprise'
ORDER BY S.CUSTOMER_ID,S.ACTIVITY_MONTH;

CUSTOMER_I ACTIVITY_     LOGINS USAGE_CHARGE    REVENUE
---------- --------- ---------- ------------ ----------
C002       01-JAN-26         48          480       2480
C002       01-FEB-26         51          510       2510
C002       01-MAR-26         47          470       2470
C002       01-APR-26         38          380       2380
C002       01-MAY-26         29          290       2290
C002       01-JUN-26         23          230       2230
C005       01-JAN-26         62          620       2620
C005       01-FEB-26         66          660       2660
C005       01-MAR-26         68          680       2680
C005       01-APR-26         67          670       2670
C005       01-MAY-26         55          550       2550
C005       01-JUN-26         49          490       2490