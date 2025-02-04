create table executions
(
    id                       bigint auto_increment
        primary key,
    plan_id                  int          null,
    phone_id                 bigint       null,
    title                    varchar(512) null,
    contents                 text         null,
    creation_date            datetime     null,
    cooldown_expiration_date datetime     null
);

create index id
    on executions (id, plan_id, phone_id, title(191), creation_date, cooldown_expiration_date);


