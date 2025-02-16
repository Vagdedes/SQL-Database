create table botStatisticsChannels
(
    id                int auto_increment
        primary key,
    server_id         bigint        null,
    category_id       bigint        null,
    channel_id        bigint        null,
    type              varchar(64)   null,
    placeholder       varchar(64)   null,
    listener_class    varchar(64)   null,
    listener_method   varchar(128)  null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    created_by        bigint        null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null,
    deleted_by        bigint        null
);

create index get
    on botStatisticsChannels (server_id, expiration_date, deletion_date);


