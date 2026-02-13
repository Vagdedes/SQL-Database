create table memberPositions
(
    id              bigint auto_increment
        primary key,
    team_id         bigint         null,
    member_id       bigint         null,
    position        int            null,
    creation_date   datetime       null,
    creation_reason varchar(16000) null,
    created_by      bigint         null
);

create index get
    on memberPositions (team_id, member_id, id);


