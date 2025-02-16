create table botTargetedMessageCreations
(
    id                 bigint auto_increment
        primary key,
    target_id          int            null,
    target_creation_id bigint         null,
    user_id            bigint         null,
    server_id          bigint         null,
    channel_id         bigint         null,
    created_thread_id  bigint         null,
    creation_date      datetime       null,
    expiration_date    datetime       null,
    expired            tinyint(1)     null,
    deletion_date      datetime       null,
    deletion_reason    varchar(16000) null,
    deleted_by         bigint         null
);

create index compare
    on botTargetedMessageCreations (target_creation_id);

create index expired
    on botTargetedMessageCreations (expired, expiration_date, deletion_date, id);

create index get_user
    on botTargetedMessageCreations (id, user_id, server_id);

create index get_user_limited
    on botTargetedMessageCreations (user_id, id, creation_date, server_id);

create index max_open
    on botTargetedMessageCreations (id, target_id, expiration_date, expired, deletion_date);

create index message_track
    on botTargetedMessageCreations (server_id, channel_id, id);

create index oldest
    on botTargetedMessageCreations (deletion_date, expired, creation_date, target_id);


