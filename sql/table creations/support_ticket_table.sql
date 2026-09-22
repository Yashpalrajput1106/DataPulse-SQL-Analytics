CREATE TABLE DP_SUPPORT_TICKETS (
    ticket_id       VARCHAR2(10) PRIMARY KEY,
    customer_id     VARCHAR2(10),
    activity_month  DATE,
    tickets_raised  NUMBER,
    tickets_resolved NUMBER,
    CONSTRAINT fk_support_customer FOREIGN KEY (customer_id) REFERENCES DP_CUSTOMERS(customer_id)
);

--Table Created
-- SQL> desc dp_support_tickets;
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  TICKET_ID                                 NOT NULL VARCHAR2(10)
--  CUSTOMER_ID                                        VARCHAR2(10)
--  ACTIVITY_MONTH                                     DATE
--  TICKETS_RAISED                                     NUMBER
--  TICKETS_RESOLVED                                   NUMBER