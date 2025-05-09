create table botUserPermissions
(
    id                int auto_increment
        primary key,
    server_id         bigint        null,
    user_id           bigint        null,
    permission        varchar(128)  null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    created_by        bigint        null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null,
    deleted_by        bigint        null
);

create index get
    on botUserPermissions (expiration_date, deletion_date, server_id);


