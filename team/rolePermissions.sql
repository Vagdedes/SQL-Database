create table rolePermissions
(
    id              bigint auto_increment
        primary key,
    team_id         bigint        null,
    role_id         bigint        null,
    permission_id   bigint        null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    created_by      bigint        null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null,
    deleted_by      bigint        null
);

create index get
    on rolePermissions (role_id, permission_id, id);

create index get_multiple
    on rolePermissions (role_id, id);


