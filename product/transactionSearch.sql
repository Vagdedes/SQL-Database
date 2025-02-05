create table transactionSearch
(
    id                    int auto_increment
        primary key,
    lookup_id             int           null,
    accepted_account_id   int           null,
    product_id            int           null,
    tier_id               int           null,
    transaction_key       varchar(64)   null,
    transaction_value     varchar(512)  null,
    identification_method varchar(10)   null,
    ignore_case           tinyint(1)    null,
    individual            tinyint(1)    null,
    duration              varchar(32)   null,
    email                 varchar(32)   null,
    additional_products   varchar(64)   null,
    min_executions        int           null,
    max_executions        int           null,
    creation_date         datetime      null,
    creation_reason       varchar(7500) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(7500) null
);

create index product
    on transactionSearch (product_id, deletion_date, lookup_id);


