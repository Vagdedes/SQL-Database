create table accountRoles
(
    id              int auto_increment
        primary key,
    account_id      int(11) unsigned null,
    role_id         int              null,
    creation_date   datetime         null,
    creation_reason varchar(8000)    null,
    created_by      int(11) unsigned null,
    expiration_date datetime         null,
    deletion_date   datetime         null,
    deletion_reason varchar(8000)    null,
    deleted_by      int(11) unsigned null
);

create index account
    on accountRoles (account_id, creation_date, expiration_date, deletion_date);

create index panel
    on accountRoles (account_id, id);

create index role
    on accountRoles (role_id, creation_date, expiration_date, account_id, deletion_date);


