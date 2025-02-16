create table botJoinRoleTracking
(
    id                bigint        not null
        primary key,
    server_id         bigint        null,
    role_id           bigint        null,
    user_id           bigint        null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null
);


