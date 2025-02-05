create table transactionSearchExecutions
(
    id             int auto_increment
        primary key,
    account_id     int unsigned null,
    lookup_id      int          null,
    transaction_id varchar(64)  null,
    product_id     int          null,
    tier_id        int          null,
    creation_date  datetime     null
);

create index get
    on transactionSearchExecutions (account_id, lookup_id);

create index redundant
    on transactionSearchExecutions (transaction_id);


