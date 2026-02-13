create table roleNameChanges
(
    id              bigint auto_increment
        primary key,
    team_id         bigint         null,
    role_id         bigint         null,
    name            varchar(512)   null,
    description     tinyint(1)     null,
    creation_date   datetime       null,
    creation_reason varchar(15000) null,
    created_by      bigint         null
);


