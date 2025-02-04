create table plans
(
    id                int auto_increment
        primary key,
    correlation_id    int           null,
    name              varchar(64)   null,
    title             varchar(512)  null,
    contents          text          null,
    comments          varchar(5000) null,
    test              tinyint(1)    null,
    redundant         tinyint(1)    null,
    default_cooldown  varchar(32)   null,
    creation_date     datetime      null,
    expiration_date   datetime      null,
    expiration_reason varchar(5000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5000) null
);

create index name
    on plans (name, deletion_date, expiration_date);


