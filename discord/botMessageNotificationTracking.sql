create table botMessageNotificationTracking
(
    id                bigint auto_increment
        primary key,
    notification_id   int           null,
    server_id         bigint        null,
    category_id       bigint        null,
    channel_id        bigint        null,
    thread_id         bigint        null,
    message_id        bigint        null,
    user_id           bigint        null,
    notification      varchar(2000) null,
    creation_date     datetime      null,
    creation_reason   varchar(4000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4000) null,
    constraint cooldown
        unique (notification_id, expiration_date, deletion_date, user_id)
);


