create table accounts
(
    id              int(11) unsigned auto_increment
        primary key,
    type            bigint        null,
    custom_id       bigint        null,
    application_id  int           null,
    email_address   varchar(384)  null,
    password        varchar(256)  null,
    name            varchar(20)   null,
    first_name      varchar(32)   null,
    middle_name     varchar(32)   null,
    last_name       varchar(32)   null,
    creation_date   datetime      null,
    creation_reason varchar(7500) null,
    deletion_date   datetime      null,
    deletion_reason varchar(7500) null
);

create index `all`
    on accounts (deletion_date, application_id);

create index custom_spam_check
    on accounts (type, custom_id, deletion_date, creation_date, application_id);

create index email_address
    on accounts (email_address(191), deletion_date, application_id);

create index id
    on accounts (id, deletion_date, application_id);

create index id_only
    on accounts (id, deletion_date);

create index name
    on accounts (name, deletion_date, application_id);


