create table botTemporaryChannelOwners
(
    id                            bigint auto_increment
        primary key,
    temporary_channel_id          int           null,
    temporary_channel_creation_id bigint        null,
    user_id                       bigint        null,
    creation_date                 datetime      null,
    creation_reason               varchar(8000) null,
    created_by                    bigint        null,
    deletion_date                 datetime      null,
    deletion_reason               varchar(8000) null,
    deleted_by                    bigint        null
);

create index count
    on botTemporaryChannelOwners (deletion_date, temporary_channel_creation_id);

create index get
    on botTemporaryChannelOwners (deletion_date, user_id, temporary_channel_creation_id);


