create table failedExecutions
(
    id            bigint auto_increment
        primary key,
    plan_id       int           null,
    email_id      bigint        null,
    title         varchar(512)  null,
    contents      text          null,
    error         varchar(7500) null,
    creation_date datetime      null,
    comments      varchar(7500) null
);

create index find
    on failedExecutions (plan_id);


