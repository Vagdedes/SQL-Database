create table botMessageReminders
(
    id                     int auto_increment
        primary key,
    server_id              bigint        null,
    channel_id             bigint        null,
    thread_id              bigint        null,
    message_name           varchar(64)   null,
    message_content        varchar(2000) null,
    cooldown               varchar(32)   null,
    check_previous         int           null,
    milliseconds_retention bigint        null,
    creation_date          datetime      null,
    creation_reason        varchar(4000) null,
    expiration_date        datetime      null,
    expiration_reason      varchar(4000) null,
    deletion_date          datetime      null,
    deletion_reason        varchar(4000) null
);

create index get
    on botMessageReminders (expiration_date, deletion_date);


