create table botMute
(
    id                bigint auto_increment
        primary key,
    server_id         bigint        null,
    channel_id        bigint        null,
    thread_id         bigint        null,
    user_id           bigint        null,
    type              varchar(32)   null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    created_by        bigint        null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null,
    deleted_by        bigint        null
);

create index `delete`
    on botMute (user_id, type, creation_date, created_by, expiration_date);

create index get
    on botMute (expiration_date, deletion_date, server_id, type);

create index was
    on botMute (deletion_date, expiration_date, server_id, channel_id, type, user_id, thread_id, id);


