create table botGiveaways
(
    id                  bigint auto_increment
        primary key,
    server_id           bigint        null,
    user_id             bigint        null,
    name                varchar(32)   null,
    title               varchar(64)   null,
    description         varchar(512)  null,
    repeat_after_ending tinyint       null,
    min_participants    int           null,
    max_participants    int           null,
    winner_amount       int           null,
    duration            varchar(32)   null,
    creation_date       datetime      null,
    creation_reason     varchar(5000) null,
    deletion_date       datetime      null,
    deletion_reason     varchar(5000) null
);

create index get
    on botGiveaways (name, deletion_date, server_id);


