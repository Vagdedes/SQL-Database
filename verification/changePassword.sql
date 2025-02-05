create table changePassword
(
    id              bigint auto_increment
        primary key,
    account_id      int(11) unsigned null,
    token           varchar(512)     null,
    code            varchar(32)      null,
    new_password    varchar(256)     null,
    creation_date   datetime         null,
    completion_date datetime         null,
    expiration_date datetime         null
);

create index compare
    on changePassword (id, account_id, new_password, creation_date, completion_date);

create index complete_code
    on changePassword (code, completion_date, expiration_date);

create index complete_token
    on changePassword (token, completion_date, expiration_date);

create index panel
    on changePassword (id, account_id);

create index request
    on changePassword (account_id, completion_date, expiration_date);


