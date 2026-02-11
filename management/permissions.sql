create table permissions
(
    id              bigint auto_increment
        primary key,
    role_id         int              null,
    permission      varchar(64)      null,
    creation_date   datetime         null,
    creation_reason varchar(8000)    null,
    created_by      int(11) unsigned null,
    expiration_date datetime         null,
    deletion_date   datetime         null,
    deletion_reason varchar(8000)    null,
    deleted_by      int(11) unsigned null
);

create index get
    on permissions (deletion_date, role_id, expiration_date);

create index get_specific
    on permissions (deletion_date, role_id, permission, expiration_date);

create index role
    on permissions (role_id, deletion_date, permission, expiration_date);


