create table queue
(
    id             bigint auto_increment
        primary key,
    transaction_id varchar(32) null,
    completed      tinyint(1)  null
);

create index completed
    on queue (completed);

create index id
    on queue (id, transaction_id, completed);

create index transaction_id
    on queue (transaction_id);


