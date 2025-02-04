create table notifications
(
    id              bigint auto_increment
        primary key,
    account_id      int(11) unsigned null,
    type_id         varchar(32)      null,
    color           varchar(16)      null,
    information     varchar(512)     null,
    email           tinyint          null,
    phone           tinyint          null,
    creation_date   datetime         null,
    expiration_date datetime         null,
    completion_date datetime         null
);

create index get
    on notifications (account_id, type_id, expiration_date, completion_date, id);

create index get_abstract
    on notifications (account_id, expiration_date, completion_date, id);

create index panel
    on notifications (id, account_id);


