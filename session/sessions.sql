create table sessions
(
    id              bigint auto_increment
        primary key,
    type            bigint           null,
    token           bigint           null,
    ip_address      varchar(39)      null,
    account_id      int(11) unsigned null,
    creation_date   datetime         null,
    expiration_date datetime         null
);

create index alive
    on sessions (expiration_date);

create index `delete`
    on sessions (type, token, expiration_date);

create index delete_old
    on sessions (account_id, expiration_date, type);

create index find
    on sessions (type, token, expiration_date, id);

create index find_with_ip
    on sessions (type, token, expiration_date, id, ip_address);

create index last_known
    on sessions (type, token, id);

create index token
    on sessions (token);


