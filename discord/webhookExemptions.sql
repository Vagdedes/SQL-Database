create table webhookExemptions
(
    id              bigint auto_increment
        primary key,
    plan_id         int           null,
    webhook_id      bigint        null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index plan_id
    on webhookExemptions (plan_id, webhook_id, deletion_date);


