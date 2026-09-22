create table DP_CUSTOMERS(
    customer_id varchar(10) primary key,
    customer_name varchar(50) not null,
    industry varchar(50),
    sign_up date);

-- Table created.
-- SQL> DESC DP_CUSTOMERS;
--  Name                                      Null?    Type
--  ----------------------------------------- -------- ----------------------------
--  CUSTOMER_ID                               NOT NULL VARCHAR2(10)
--  CUSTOMER_NAME                             NOT NULL VARCHAR2(50)
--  INDUSTRY                                           VARCHAR2(50)
--  SIGN_UP                                            DATE