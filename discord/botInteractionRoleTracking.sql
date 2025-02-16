create table botInteractionRoleTracking
(
    id              bigint auto_increment
        primary key,
    choice_id       bigint         null,
    user_id         bigint         null,
    role_id         bigint         null,
    `add`           tinyint(1)     null,
    creation_date   datetime       null,
    creation_reason varchar(16000) null
);


