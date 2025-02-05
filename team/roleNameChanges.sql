create table roleNameChanges
(
    id              int auto_increment
        primary key,
    team_id         int            null,
    role_id         int            null,
    name            varchar(512)   null,
    description     tinyint(1)     null,
    creation_date   datetime       null,
    creation_reason varchar(15000) null,
    created_by      int            null
);


