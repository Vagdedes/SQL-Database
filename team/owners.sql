create table owners
(
    id              bigint auto_increment
        primary key,
    team_id         bigint         null,
    member_id       bigint         null,
    automatic       tinyint(1)     null,
    creation_date   datetime       null,
    creation_reason varchar(16000) null,
    created_by      bigint         null
);

create index get
    on owners (team_id);


