create table botTemporaryChannels
(
    id                            int auto_increment
        primary key,
    inception_server_id           bigint        null,
    inception_channel_id          bigint        null,
    inception_channel_category_id bigint        null,
    inception_channel_prefix      varchar(16)   null,
    inception_channel_suffix      varchar(16)   null,
    inception_channel_topic       varchar(256)  null,
    inception_channel_expiration  varchar(32)   null,
    allow_permission              bigint        null,
    deny_permission               bigint        null,
    max_open                      int           null,
    cooldown                      varchar(32)   null,
    duration                      varchar(32)   null,
    owner_can_manage              tinyint(1)    null,
    remove_owner_on_leave         tinyint(1)    null,
    close_oldest_if_max_open      tinyint(1)    null,
    creation_date                 datetime      null,
    creation_reason               varchar(5250) null,
    expiration_date               datetime      null,
    expiration_reason             varchar(5250) null,
    deletion_date                 datetime      null,
    deletion_reason               varchar(5250) null
);

create index get
    on botTemporaryChannels (expiration_date, deletion_date);


