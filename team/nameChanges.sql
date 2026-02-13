create table nameChanges
(
    id              bigint auto_increment
        primary key,
    team_id         bigint         null,
    name            varchar(512)   null,
    description     tinyint(1)     null,
    creation_date   datetime       null,
    creation_reason varchar(15000) null,
    created_by      bigint         null
);

create index find_by_name
    on nameChanges (name, description, id);

create index get
    on nameChanges (team_id, name, description, id);


