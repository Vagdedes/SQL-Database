create table webhookPlans
(
    id                int auto_increment
        primary key,
    correlation_id    int           null,
    comments          varchar(1000) null,
    name              varchar(32)   null,
    color             varchar(16)   null,
    avatar_image      varchar(512)  null,
    author_name       varchar(64)   null,
    author_url        varchar(512)  null,
    author_icon_url   varchar(512)  null,
    author_image      varchar(512)  null,
    title             varchar(64)   null,
    title_url         varchar(512)  null,
    description       varchar(512)  null,
    footer            varchar(64)   null,
    footer_image      varchar(512)  null,
    webhook_names     varchar(2000) null,
    webhook_values    varchar(2000) null,
    information       varchar(2000) null,
    test              tinyint(1)    null,
    default_cooldown  varchar(32)   null,
    creation_date     datetime      null,
    expiration_date   datetime      null,
    expiration_reason varchar(1500) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(1500) null
);

create index name
    on webhookPlans (deletion_date, name, expiration_date);


