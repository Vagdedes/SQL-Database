create table emailVerifications
(
    id              bigint auto_increment
        primary key,
    account_id      int(11) unsigned null,
    token           varchar(512)     null,
    code            varchar(32)      null,
    email_address   varchar(384)     null,
    creation_date   datetime         null,
    completion_date datetime         null,
    expiration_date datetime         null
);

create index complete
    on emailVerifications (completion_date, expiration_date, account_id);

create index complete_code
    on emailVerifications (code, completion_date, expiration_date);

create index complete_token
    on emailVerifications (expiration_date, completion_date, token);

create index initiate
    on emailVerifications (completion_date, expiration_date, email_address, account_id);

create index panel
    on emailVerifications (id, account_id);

create index verify
    on emailVerifications (email_address, account_id, completion_date);


