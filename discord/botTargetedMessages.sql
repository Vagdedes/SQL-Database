create table botTargetedMessages
(
    id                         int auto_increment
        primary key,
    title                      varchar(100)  null,
    server_id                  bigint        null,
    create_channel_category_id bigint        null,
    create_channel_id          bigint        null,
    create_channel_name        varchar(32)   null,
    create_channel_topic       varchar(256)  null,
    create_message             varchar(2000) null,
    prompt_message             varchar(2000) null,
    cooldown_message           varchar(2000) null,
    failure_message            varchar(2000) null,
    target_duration            varchar(32)   null,
    cooldown_duration          varchar(32)   null,
    max_open                   int           null,
    close_oldest_if_max_open   tinyint(1)    null,
    allow_permission           bigint        null,
    deny_permission            bigint        null,
    creation_date              datetime      null,
    creation_reason            varchar(2000) null,
    expiration_date            datetime      null,
    expiration_reason          varchar(2000) null,
    deletion_date              datetime      null,
    deletion_reason            varchar(2000) null
);

create index get
    on botTargetedMessages (expiration_date, deletion_date);


