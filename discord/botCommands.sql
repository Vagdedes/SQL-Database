create table botCommands
(
    id                     int auto_increment
        primary key,
    server_id              bigint        null,
    channel_id             bigint        null,
    required_permission    varchar(128)  null,
    command_placeholder    varchar(8)    null,
    command_identification varchar(32)   null,
    command_description    varchar(100)  null,
    argument_separator     varchar(16)   null,
    command_reply          varchar(2000) null,
    cooldown_duration      varchar(32)   null,
    cooldown_message       varchar(2000) null,
    no_permission_message  varchar(2000) null,
    listener_class         varchar(64)   null,
    listener_method        varchar(128)  null,
    ephemeral              tinyint(1)    null,
    creation_date          datetime      null,
    creation_reason        varchar(2000) null,
    expiration_date        datetime      null,
    expiration_reason      varchar(2000) null,
    deletion_date          datetime      null,
    deletion_reason        varchar(2000) null
);

create index get
    on botCommands (expiration_date, deletion_date, command_reply(16));

create index get_custom
    on botCommands (command_reply(16), expiration_date, deletion_date, command_placeholder);

create index get_native
    on botCommands (command_placeholder, expiration_date, deletion_date, id);


