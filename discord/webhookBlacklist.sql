create table webhookBlacklist
(
    id                    int auto_increment
        primary key,
    webhook_url           varchar(512)  null,
    identification_method varchar(10)   null,
    creation_date         datetime      null,
    creation_reason       varchar(7500) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(7500) null
);

create index deletion_date
    on webhookBlacklist (deletion_date);


