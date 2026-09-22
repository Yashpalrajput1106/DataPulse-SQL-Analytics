INSERT INTO DP_CUSTOMERS (customer_id, customer_name, industry, sign_up) VALUES ('C001','Alpha Retail Group','Retail',TO_DATE('10-Jan-2026','DD-Mon-YYYY'));
INSERT INTO DP_CUSTOMERS (customer_id, customer_name, industry, sign_up) VALUES ('C002','Beta Bank','Banking',TO_DATE('12-Jan-2026','DD-Mon-YYYY'));
INSERT INTO DP_CUSTOMERS (customer_id, customer_name, industry, sign_up) VALUES ('C003','Gamma Health Services','Healthcare',TO_DATE('18-Jan-2026','DD-Mon-YYYY'));
INSERT INTO DP_CUSTOMERS (customer_id, customer_name, industry, sign_up) VALUES ('C004','Delta Logistics','Logistics',TO_DATE('05-Feb-2026','DD-Mon-YYYY'));
INSERT INTO DP_CUSTOMERS (customer_id, customer_name, industry, sign_up) VALUES ('C005','Epsilon Software','Software',TO_DATE('08-Jan-2026','DD-Mon-YYYY'));
COMMIT;




-- SQL> select * from dp_customers;

-- CUSTOMER_I CUSTOMER_NAME                                      INDUSTRY                                           SIGN_UP
-- ---------- -------------------------------------------------- -------------------------------------------------- ---------
-- C001       Alpha Retail Group                                 Retail                                             10-JAN-26
-- C002       Beta Bank                                          Banking                                            12-JAN-26
-- C003       Gamma Health Services                              Healthcare                                         18-JAN-26
-- C004       Delta Logistics                                    Logistics                                          05-FEB-26
-- C005       Epsilon Software                                   Software                                           08-JAN-26

-- SQL> commit;

-- Commit complete.