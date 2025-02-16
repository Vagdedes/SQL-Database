create table botButtonComponents
(
    id                        bigint auto_increment
        primary key,
    name                      varchar(64)   null,
    priority                  int           null,
    controlled_message_id     bigint        null,
    row_id                    bigint        null,
    custom_id                 varchar(100)  null,
    creation_listener_class   varchar(64)   null,
    creation_listener_method  varchar(128)  null,
    implement_listener_class  varchar(64)   null,
    implement_listener_method varchar(128)  null,
    color                     varchar(32)   null,
    emoji                     varchar(32)   null,
    label                     varchar(80)   null,
    url                       varchar(512)  null,
    disabled                  tinyint(1)    null,
    ephemeral                 tinyint(1)    null,
    response                  varchar(2000) null,
    creation_date             datetime      null,
    creation_reason           varchar(4000) null,
    expiration_date           datetime      null,
    expiration_reason         varchar(4000) null,
    deletion_date             datetime      null,
    deletion_reason           varchar(4000) null
);

create index get_id
    on botButtonComponents (controlled_message_id, expiration_date, deletion_date, priority);

create index get_name
    on botButtonComponents (priority, name, deletion_date, expiration_date);


