create table botMessageTransferrerChannels
(
    id                     int auto_increment
        primary key,
    message_transferrer_id int           null,
    track_modification     tinyint(1)    null,
    track_deletion         tinyint(1)    null,
    server_id              bigint        null,
    channel_id             bigint        null,
    thread_id              bigint        null,
    creation_date          datetime      null,
    creation_reason        varchar(5333) null,
    created_by             bigint        null,
    expiration_date        datetime      null,
    expiration_reason      varchar(5333) null,
    deletion_date          datetime      null,
    deletion_reason        varchar(5333) null,
    deleted_by             bigint        null
);

create index get
    on botMessageTransferrerChannels (message_transferrer_id, expiration_date, deletion_date);


