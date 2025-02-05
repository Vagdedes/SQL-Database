create table nameChanges
(
    id              int auto_increment
        primary key,
    team_id         int            null,
    name            varchar(512)   null,
    description     tinyint(1)     null,
    creation_date   datetime       null,
    creation_reason varchar(15000) null,
    created_by      int            null
);

create index find_by_name
    on nameChanges (name, description, id);

create index get
    on nameChanges (team_id, name, description, id);


