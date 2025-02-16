create table botTemporaryChannelTracking
(
    id                            bigint auto_increment
        primary key,
    temporary_channel_id          int           null,
    temporary_channel_creation_id bigint        null,
    server_id                     bigint        null,
    channel_id                    bigint        null,
    lock_date                     datetime      null,
    creation_date                 datetime      null,
    creation_reason               varchar(5333) null,
    expired                       tinyint(1)    null,
    expiration_date               datetime      null,
    expiration_reason             varchar(5333) null,
    deletion_date                 datetime      null,
    deletion_reason               varchar(5333) null
);

create index compare
    on botTemporaryChannelTracking (temporary_channel_creation_id);

create index expired
    on botTemporaryChannelTracking (deletion_date, expired, expiration_date, id);

create index get_channel
    on botTemporaryChannelTracking (temporary_channel_creation_id, expiration_date, deletion_date);

create index get_id
    on botTemporaryChannelTracking (channel_id, expiration_date, deletion_date, id, server_id);

create index get_id_limited
    on botTemporaryChannelTracking (channel_id, expiration_date, deletion_date, id, server_id);

create index max_open
    on botTemporaryChannelTracking (temporary_channel_id, deletion_date, expired, expiration_date, id);

create index oldest
    on botTemporaryChannelTracking (creation_date, deletion_date, temporary_channel_id, expired);


