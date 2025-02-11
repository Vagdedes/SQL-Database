create table memberPositions
(
    id              int auto_increment
        primary key,
    team_id         int            null,
    member_id       int            null,
    position        int            null,
    creation_date   datetime       null,
    creation_reason varchar(16000) null,
    created_by      int            null
);

create index get
    on memberPositions (team_id, member_id, id);


