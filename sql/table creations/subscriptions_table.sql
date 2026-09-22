create table DP_SUBSCRIPTIONS(
    subscription_id varchar(10) primary key,
    customer_id varchar(10),
    activity_month date,
    subs_type varchar(20),
    revenue number(10,2),
    constraint fk_subscription foreign key (customer_id) references DP_CUSTOMERS(customer_id),
    CONSTRAINT uq_subscription_month UNIQUE (customer_id, activity_month)
);

-- Table created.

-- SQL> desc dp_subscriptions;
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  SUBSCRIPTION_ID                           NOT NULL VARCHAR2(10)
--  CUSTOMER_ID                                        VARCHAR2(10)
--  ACTIVITY_MONTH                                     DATE
--  SUBS_TYPE                                          VARCHAR2(20)
--  REVENUE                                            NUMBER(10,2)