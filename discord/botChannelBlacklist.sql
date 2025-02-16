create table botChannelBlacklist
(
    id                int auto_increment
        primary key,
    server_id         bigint        null,
    category_id       bigint        null,
    channel_id        bigint        null,
    thread_id         bigint        null,
    user_id           bigint        null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null
);

create index get
    on botChannelBlacklist (deletion_date, expiration_date);


