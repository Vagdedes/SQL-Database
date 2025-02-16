create table webhookExecutions
(
    id                       bigint auto_increment
        primary key,
    plan_id                  int          null,
    webhook_id               bigint       null,
    title                    varchar(512) null,
    object                   text         null,
    creation_date            datetime     null,
    cooldown_expiration_date datetime     null
);

create index id
    on webhookExecutions (id, plan_id, webhook_id, title(191), creation_date, cooldown_expiration_date);


