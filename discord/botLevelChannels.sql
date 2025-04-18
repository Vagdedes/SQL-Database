create table botLevelChannels
(
    id                int auto_increment
        primary key,
    level_id          int           null,
    server_id         bigint        null,
    channel_id        bigint        null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null
);

create index get
    on botLevelChannels (expiration_date, deletion_date, level_id);


