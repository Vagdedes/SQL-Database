create table failedExecutions
(
    id            bigint auto_increment
        primary key,
    plan_id       int           null,
    phone_id      bigint        null,
    title         varchar(512)  null,
    contents      text          null,
    error         varchar(7500) null,
    creation_date datetime      null,
    notes         varchar(7500) null
);

create index find
    on failedExecutions (plan_id);


