create table roleMembers
(
    id              bigint auto_increment
        primary key,
    team_id         bigint        null,
    role_id         bigint        null,
    member_id       bigint        null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    created_by      bigint        null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null,
    deleted_by      bigint        null
);

create index get
    on roleMembers (team_id, member_id, deletion_date, id);

create index get_all
    on roleMembers (team_id, deletion_date, id);


