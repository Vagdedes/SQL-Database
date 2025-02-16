create table botAIFeedback
(
    id              int auto_increment
        primary key,
    server_id       bigint        null,
    channel_id      bigint        null,
    thread_id       bigint        null,
    message_id      bigint        null,
    user_id         bigint        null,
    value           tinyint(1)    null,
    assisted_user   tinyint(1)    null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index get
    on botAIFeedback (deletion_date, server_id, channel_id, thread_id, message_id, user_id);


