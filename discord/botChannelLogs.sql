create table botChannelLogs
(
    id                int auto_increment
        primary key,
    bot_id            bigint        null,
    server_id         bigint        null,
    channel_id        bigint        null,
    thread_id         bigint        null,
    action            varchar(64)   null,
    description       varchar(512)  null,
    color             varchar(32)   null,
    ignore_bot        tinyint(1)    null,
    creation_date     datetime      null,
    creation_reason   varchar(5000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5000) null
);

create index get
    on botChannelLogs (expiration_date, deletion_date, bot_id);


