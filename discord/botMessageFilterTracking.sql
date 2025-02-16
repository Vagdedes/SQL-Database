create table botMessageFilterTracking
(
    id              int auto_increment
        primary key,
    filter_id       int           null,
    constant_id     int           null,
    server_id       bigint        null,
    category_id     bigint        null,
    channel_id      bigint        null,
    thread_id       bigint        null,
    user_id         int           null,
    message_id      bigint        null,
    message_content varchar(2000) null,
    mute_period     varchar(32)   null,
    message         varchar(2000) null,
    creation_date   datetime      null,
    creation_reason varchar(4000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(4000) null
);


