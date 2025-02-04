create table suspendedTransactions
(
    id                     int auto_increment
        primary key,
    ignore_case            tinyint(1)    null,
    cover_fees             tinyint(1)    null,
    identification_method  varchar(10)   null,
    transaction_key        varchar(64)   null,
    transaction_value      varchar(255)  null,
    transaction_note       varchar(255)  null,
    additional_information varchar(512)  null,
    creation_date          datetime      null,
    creation_reason        varchar(7500) null,
    deletion_date          datetime      null,
    deletion_reason        varchar(7500) null
);

create index id
    on suspendedTransactions (id, deletion_date);


