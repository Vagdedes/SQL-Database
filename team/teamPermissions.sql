create table teamPermissions
(
    id              int auto_increment
        primary key,
    team_id         int           null,
    member_id       int           null,
    permission_id   int           null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    created_by      int           null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null,
    deleted_by      int           null
);

create index get
    on teamPermissions (team_id, permission_id, id);

create index get_multiple
    on teamPermissions (team_id, id);


