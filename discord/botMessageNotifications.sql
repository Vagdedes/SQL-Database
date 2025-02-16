create table botMessageNotifications
(
    id                int auto_increment
        primary key,
    priority          int           null,
    server_id         bigint        null,
    category_id       bigint        null,
    channel_id        bigint        null,
    thread_id         bigint        null,
    message_name      varchar(64)   null,
    notification      varchar(2000) null,
    is_thread         tinyint(1)    null,
    lock_thread       tinyint(1)    null,
    delete_message    tinyint(1)    null,
    duration          varchar(32)   null,
    ai_model_id       int           null,
    feedback          tinyint(1)    null,
    listener_class    varchar(64)   null,
    listener_method   varchar(128)  null,
    creation_date     datetime      null,
    creation_reason   varchar(4000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4000) null
);

create index get
    on botMessageNotifications (deletion_date, expiration_date, priority);


