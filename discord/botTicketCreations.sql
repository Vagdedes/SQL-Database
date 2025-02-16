create table botTicketCreations
(
    id                        bigint auto_increment
        primary key,
    plan_id                   int           null,
    ticket_id                 int           null,
    ticket_creation_id        bigint        null,
    server_id                 bigint        null,
    channel_id                bigint        null,
    user_id                   bigint        null,
    created_channel_server_id bigint        null,
    created_channel_id        bigint        null,
    message_id                bigint        null,
    creation_date             datetime      null,
    creation_reason           varchar(8000) null,
    expiration_date           datetime      null,
    expired                   tinyint(1)    null,
    deletion_date             datetime      null,
    deletion_reason           varchar(8000) null,
    deleted_by                bigint        null
);

create index compare
    on botTicketCreations (ticket_creation_id);

create index cooldown
    on botTicketCreations (ticket_id, id, user_id, creation_date);

create index expired
    on botTicketCreations (deletion_date, expiration_date, expired, id, plan_id);

create index get_user
    on botTicketCreations (id, user_id, server_id);

create index get_user_limited
    on botTicketCreations (user_id, creation_date, id, server_id);

create index max_open_general
    on botTicketCreations (deletion_date, ticket_id, id, expiration_date, expired);

create index max_open_per_user
    on botTicketCreations (user_id, ticket_id, deletion_date, id, expiration_date, expired);

create index message_track
    on botTicketCreations (created_channel_server_id, created_channel_id, id);


