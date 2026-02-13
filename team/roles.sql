create table roles
(
    id              bigint auto_increment
        primary key,
    team_id         bigint        null,
    title           varchar(64)   null,
    last_position   int           null,
    creation_date   timestamp     null,
    creation_reason varchar(8000) null,
    created_by      bigint        null,
    deletion_date   timestamp     null,
    deletion_reason varchar(8000) null,
    deleted_by      bigint        null
);

create index get_by_id
    on roles (team_id, id, deletion_date);

create index get_by_title
    on roles (team_id, title, deletion_date);

create index get_multiple
    on roles (team_id, deletion_date);


