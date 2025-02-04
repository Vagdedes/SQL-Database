create table roles
(
    id              int auto_increment
        primary key,
    application_id  int              null,
    priority        int              null,
    public          tinyint(1)       null,
    name            varchar(64)      null,
    prefix          varchar(32)      null,
    suffix          varchar(32)      null,
    creation_date   datetime         null,
    creation_reason varchar(8000)    null,
    created_by      int(11) unsigned null,
    deletion_date   datetime         null,
    deletion_reason varchar(8000)    null,
    deleted_by      int(11) unsigned null
);

create index get_by_id
    on roles (id, deletion_date, application_id);

create index get_by_name
    on roles (name, deletion_date, application_id);


