create table botAntiExpirationThreads
(
    id                     int auto_increment
        primary key,
    server_id              bigint        null,
    channel_id             bigint        null,
    thread_id              bigint        null,
    message_content        varchar(2000) null,
    milliseconds_retention bigint        null,
    creation_date          datetime      null,
    creation_reason        varchar(4000) null,
    created_by             bigint        null,
    expiration_date        datetime      null,
    expiration_reason      varchar(4000) null,
    deletion_date          datetime      null,
    deletion_reason        varchar(4000) null,
    deleted_by             bigint        null
);

create index get
    on botAntiExpirationThreads (expiration_date, deletion_date);


