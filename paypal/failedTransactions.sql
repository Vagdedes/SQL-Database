create table failedTransactions
(
    id             bigint auto_increment
        primary key,
    transaction_id varchar(64) null,
    creation_date  datetime    null,
    deletion_date  datetime    null
);

create index date
    on failedTransactions (creation_date, id, deletion_date);

create index deletion
    on failedTransactions (deletion_date, id);

create index id
    on failedTransactions (id, transaction_id);

create index process_existence
    on failedTransactions (transaction_id);


