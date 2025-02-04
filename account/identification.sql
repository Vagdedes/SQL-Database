create table identification
(
    id              int(11) unsigned auto_increment
        primary key,
    account_id      int(11) unsigned null,
    code            varchar(7)       null,
    expiration_date datetime         null,
    constraint account_id_UNIQUE
        unique (account_id)
);

create index account
    on identification (account_id);

create index code
    on identification (code);


