create table rolePositions
(
    id              bigint auto_increment
        primary key,
    team_id         bigint         null,
    role_id         bigint         null,
    position        int            null,
    creation_date   datetime       null,
    creation_reason varchar(16000) null,
    created_by      bigint         null
);

create index get
    on rolePositions (role_id, id);


