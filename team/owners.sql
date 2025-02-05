create table owners
(
    id              int auto_increment
        primary key,
    team_id         int            null,
    member_id       int            null,
    automatic       tinyint(1)     null,
    creation_date   datetime       null,
    creation_reason varchar(16000) null,
    created_by      int            null
);

create index get
    on owners (team_id);


