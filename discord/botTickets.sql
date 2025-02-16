create table botTickets
(
    id                         int auto_increment
        primary key,
    name                       varchar(64)   null,
    modal_component_id         bigint        null,
    title                      varchar(100)  null,
    create_channel_name        varchar(32)   null,
    create_channel_topic       varchar(256)  null,
    create_channel_category_id bigint        null,
    allow_permission           bigint        null,
    deny_permission            bigint        null,
    max_open_general           int           null,
    max_open_per_user          int           null,
    max_open_message           varchar(2000) null,
    post_server_id             bigint        null,
    post_channel_id            bigint        null,
    cooldown_time              varchar(32)   null,
    cooldown_message           varchar(2000) null,
    duration                   varchar(32)   null,
    post_title                 varchar(64)   null,
    post_description           varchar(128)  null,
    post_image_url             varchar(512)  null,
    post_color                 varchar(32)   null,
    user_response              varchar(2000) null,
    ephemeral_user_response    tinyint(1)    null,
    listener_class             varchar(64)   null,
    listener_method            varchar(128)  null,
    creation_date              datetime      null,
    creation_reason            varchar(2000) null,
    expiration_date            datetime      null,
    expiration_reason          varchar(2000) null,
    deletion_date              datetime      null,
    deletion_reason            varchar(2000) null
);

create index get
    on botTickets (expiration_date, deletion_date, modal_component_id);


