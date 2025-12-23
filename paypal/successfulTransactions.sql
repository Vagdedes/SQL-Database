create table successfulTransactions
(
    id             bigint auto_increment
        primary key,
    transaction_id varchar(64) null,
    creation_date  datetime    null,
    details        longtext    null
);

create index `all`
    on successfulTransactions (creation_date, id);

create index data_pair
    on successfulTransactions (id, details(512));

create index data_pair_date
    on successfulTransactions (id, details(512), creation_date);


