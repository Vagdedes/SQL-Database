create table botControlledMessages
(
    id                    bigint auto_increment
        primary key,
    name                  varchar(64)   null,
    server_id             bigint        null,
    channel_id            bigint        null,
    thread_id             bigint        null,
    message_id            bigint        null,
    copy_of               varchar(64)   null,
    message_content       varchar(2000) null,
    embed_title           varchar(256)  null,
    embed_description     varchar(4096) null,
    embed_url             varchar(512)  null,
    embed_author_name     varchar(256)  null,
    embed_author_icon_url varchar(512)  null,
    embed_author_url      varchar(512)  null,
    embed_image           varchar(512)  null,
    embed_timestamp       datetime      null,
    embed_color           varchar(32)   null,
    embed_footer          varchar(2048) null,
    listener_class        varchar(64)   null,
    listener_method       varchar(128)  null,
    listener_recursion    tinyint(1)    null,
    creation_date         datetime      null,
    creation_reason       varchar(1500) null,
    expiration_date       datetime      null,
    expiration_reason     varchar(1500) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(1500) null
);

create index find
    on botControlledMessages (message_id, expiration_date, deletion_date, server_id);

create index get
    on botControlledMessages (expiration_date, deletion_date, copy_of);


