create table roleMembers
(
    id              int auto_increment
        primary key,
    team_id         int           null,
    role_id         int           null,
    member_id       int           null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    created_by      int           null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null,
    deleted_by      int           null
);

create index get
    on roleMembers (team_id, member_id, deletion_date);


