create table failedTransactions
(
    id             bigint auto_increment
        primary key,
    transaction_id varchar(64) null,
    creation_date  datetime    null
);

create index date
    on failedTransactions (creation_date, id);

create index id
    on failedTransactions (id, transaction_id);

create index transaction_id
    on failedTransactions (transaction_id);


