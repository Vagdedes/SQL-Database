create table botCounting
(
    id                       int auto_increment
        primary key,
    server_id                bigint        null,
    channel_id               bigint        null,
    thread_id                bigint        null,
    notifications_server_id  bigint        null,
    notifications_channel_id bigint        null,
    starting_number          double        null,
    current_number           double        null,
    max_number               double        null,
    number_pattern           double        null,
    allow_decimals           tinyint(1)    null,
    max_repetitions          int           null,
    creation_date            datetime      null,
    creation_reason          varchar(5333) null,
    expiration_date          datetime      null,
    expiration_reason        varchar(5333) null,
    deletion_date            datetime      null,
    deletion_reason          varchar(5333) null
);

create index get
    on botCounting (expiration_date, deletion_date);


