create table botSelectionComponents
(
    id                        bigint auto_increment
        primary key,
    controlled_message_id     bigint        null,
    name                      varchar(64)   null,
    creation_listener_class   varchar(64)   null,
    creation_listener_method  varchar(128)  null,
    implement_listener_class  varchar(64)   null,
    implement_listener_method varchar(128)  null,
    placeholder               varchar(150)  null,
    response                  varchar(2000) null,
    min_choices               int           null,
    max_choices               int           null,
    disabled                  tinyint(1)    null,
    ephemeral                 tinyint(1)    null,
    creation_date             datetime      null,
    creation_reason           varchar(4000) null,
    expiration_date           datetime      null,
    expiration_reason         varchar(4000) null,
    deletion_date             datetime      null,
    deletion_reason           varchar(4000) null
);

create index get_id
    on botSelectionComponents (controlled_message_id, expiration_date, deletion_date);

create index get_name
    on botSelectionComponents (name, expiration_date, deletion_date);


