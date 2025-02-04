create table exemptions
(
    id              bigint auto_increment
        primary key,
    plan_id         int           null,
    email_id        bigint        null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index plan_id
    on exemptions (plan_id, email_id, deletion_date);


