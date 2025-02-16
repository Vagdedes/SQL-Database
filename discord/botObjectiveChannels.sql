create table botObjectiveChannels
(
    id                int auto_increment
        primary key,
    start_server_id   bigint        null,
    start_category_id bigint        null,
    start_channel_id  bigint        null,
    start_thread_id   bigint        null,
    end_server_id     bigint        null,
    end_category_id   bigint        null,
    end_channel_id    bigint        null,
    end_thread_id     bigint        null,
    creation_date     datetime      null,
    creation_reason   varchar(5333) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5333) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5333) null
);

create index get
    on botObjectiveChannels (expiration_date, deletion_date);


