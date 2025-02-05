create table instantLogins
(
    id              bigint auto_increment
        primary key,
    account_id      int(11) unsigned null,
    token           varchar(128)     null,
    code            varchar(32)      null,
    ip_address      varchar(39)      null,
    access_token    varchar(128)     null,
    creation_date   datetime         null,
    completion_date datetime         null,
    expiration_date datetime         null
);

create index completion_code
    on instantLogins (completion_date, expiration_date, ip_address, code);

create index completion_token
    on instantLogins (completion_date, expiration_date, ip_address, token);

create index initiate
    on instantLogins (account_id, ip_address, completion_date);

create index panel
    on instantLogins (account_id, id);

create index pending
    on instantLogins (completion_date, expiration_date, account_id, ip_address);


