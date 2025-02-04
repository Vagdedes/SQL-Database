create table successfulTransactions
(
    id             bigint auto_increment
        primary key,
    transaction_id varchar(64)   null,
    creation_date  datetime      null,
    details        varchar(3072) null
);

create index `all`
    on successfulTransactions (creation_date, id);

create index data_pair
    on successfulTransactions (id, details(512));


