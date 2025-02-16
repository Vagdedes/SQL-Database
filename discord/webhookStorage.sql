create table webhookStorage
(
    id            bigint auto_increment
        primary key,
    webhook_url   varchar(512)   null,
    comments      varchar(15000) null,
    test          tinyint(1)     null,
    creation_date datetime       null
);

create index webhook
    on webhookStorage (webhook_url);


