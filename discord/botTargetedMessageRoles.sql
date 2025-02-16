create table botTargetedMessageRoles
(
    id              int auto_increment
        primary key,
    target_id       int           null,
    role_id         bigint        null,
    allow           bigint        null,
    deny            bigint        null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index get
    on botTargetedMessageRoles (target_id, deletion_date);


