create table botInviteTrackerGoals
(
    id                   int auto_increment
        primary key,
    title                varchar(128)  null,
    description          varchar(512)  null,
    target_invited_users double        null,
    max_goals            int           null,
    message_server_id    bigint        null,
    message_channel_id   bigint        null,
    message_name         varchar(64)   null,
    message_content      varchar(2000) null,
    listener_class       varchar(128)  null,
    listener_method      varchar(64)   null,
    creation_date        datetime      null,
    creation_reason      varchar(4000) null,
    expiration_date      datetime      null,
    expiration_reason    varchar(4000) null,
    deletion_date        datetime      null,
    deletion_reason      varchar(4000) null
);

create index get
    on botInviteTrackerGoals (expiration_date, deletion_date);


