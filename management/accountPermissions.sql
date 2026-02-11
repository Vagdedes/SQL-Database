create table accountPermissions
(
    id              bigint auto_increment
        primary key,
    account_id      int(11) unsigned null,
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
    on accountPermissions (account_id, expiration_date, deletion_date);

create index get_specific
    on accountPermissions (account_id, expiration_date, deletion_date, permission);

create index panel
    on accountPermissions (account_id, id);


