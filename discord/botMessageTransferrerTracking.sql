create table botMessageTransferrerTracking
(
    id                     bigint auto_increment
        primary key,
    message_transferrer_id int           null,
    message_content        varchar(4000) null,
    start_server_id        bigint        null,
    start_channel_id       bigint        null,
    start_thread_id        bigint        null,
    start_message_id       bigint        null,
    start_user_id          bigint        null,
    end_server_id          bigint        null,
    end_channel_id         bigint        null,
    end_thread_id          bigint        null,
    end_message_id         bigint        null,
    end_user_id            bigint        null,
    edited                 tinyint(1)    null,
    creation_date          datetime      null,
    creation_reason        varchar(6000) null,
    deletion_date          datetime      null,
    deletion_reason        varchar(6000) null
);

create index get
    on botMessageTransferrerTracking (deletion_date, start_user_id, start_channel_id, start_message_id, start_thread_id);

create index get_shorter
    on botMessageTransferrerTracking (deletion_date, start_server_id, start_thread_id);


