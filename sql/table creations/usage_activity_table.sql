create table DP_USAGE_ACTIVITY(
    customer_id varchar(10) references DP_CUSTOMERS(customer_id),
    activity_month date,
    logins number,
    reports_created number,
    analyses_run number,
    constraint pk_usage_activity primary key (customer_id, activity_month),
    constraint fk_usage_activity_customer foreign key (customer_id) references DP_CUSTOMERS(customer_id)
);

-- Table created.

-- SQL> desc dp_usage_activity;
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  CUSTOMER_ID                               NOT NULL VARCHAR2(10)
--  ACTIVITY_MONTH                            NOT NULL DATE
--  LOGINS                                             NUMBER
--  REPORTS_CREATED                                    NUMBER
--  ANALYSES_RUN                                       NUMBER