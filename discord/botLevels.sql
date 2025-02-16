create table botLevels
(
    id                       int auto_increment
        primary key,
    notification_server_id   bigint        null,
    notification_channel_id  bigint        null,
    message_name             varchar(64)   null,
    message_content          varchar(45)   null,
    points_duration          varchar(32)   null,
    message_character_points double        null,
    voice_second_points      double        null,
    attachment_points        double        null,
    reaction_points          double        null,
    invite_use_points        double        null,
    point_cooldown           varchar(32)   null,
    creation_date            datetime      null,
    creation_reason          varchar(4000) null,
    expiration_date          datetime      null,
    expiration_reason        varchar(4000) null,
    deletion_date            datetime      null,
    deletion_reason          varchar(4000) null
);

create index get
    on botLevels (expiration_date, deletion_date);


