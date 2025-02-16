create table botInviteTracker
(
    id              bigint auto_increment
        primary key,
    server_id       bigint        null,
    user_id         bigint        null,
    invite_code     varchar(64)   null,
    uses            int           null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    expiration_date datetime      null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null
);

create index get_code
    on botInviteTracker (server_id, invite_code, deletion_date, id);

create index get_server
    on botInviteTracker (server_id, deletion_date, uses);

create index get_user
    on botInviteTracker (server_id, user_id, deletion_date);


