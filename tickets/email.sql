create table email
(
    id              int auto_increment
        primary key,
    identifier      int           null,
    account_id      int unsigned  null,
    email_address   varchar(384)  null,
    logged_in       tinyint(1)    null,
    session_type    bigint        null,
    session_key     bigint        null,
    subject         varchar(64)   null,
    information     varchar(2048) null,
    extra           varchar(512)  null,
    creation_date   datetime      null,
    creation_reason varchar(6000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(6000) null
);

create index redundancy
    on email (identifier);


