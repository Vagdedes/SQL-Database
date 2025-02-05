create table successfulTransactions
(
    id             bigint auto_increment
        primary key,
    transaction_id varchar(64)   null,
    creation_date  datetime      null,
    details        varchar(3072) null,
    constraint id
        unique (id, transaction_id, details(512))
);

create index date
    on successfulTransactions (creation_date, id);

create index details
    on successfulTransactions (details(768));

create index transaction_id
    on successfulTransactions (transaction_id);


