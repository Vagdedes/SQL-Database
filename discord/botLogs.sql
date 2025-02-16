create table botLogs
(
    id            bigint auto_increment
        primary key,
    bot_id        bigint       null,
    server_id     bigint       null,
    user_id       bigint       null,
    action        varchar(128) null,
    object        longtext     null,
    old_object    longtext     null,
    creation_date datetime     null
);

create index message_search
    on botLogs (id, action, server_id);


