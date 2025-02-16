create table webhookFailedExecutions
(
    id            bigint auto_increment
        primary key,
    plan_id       int           null,
    webhook_id    bigint        null,
    title         varchar(512)  null,
    object        text          null,
    error         varchar(7500) null,
    creation_date datetime      null,
    comments      varchar(7500) null
);

create index find
    on webhookFailedExecutions (plan_id);


