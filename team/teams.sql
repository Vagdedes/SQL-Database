create table teams
(
    id                 int auto_increment
        primary key,
    additional_id      int              null,
    creation_date      datetime         null,
    creation_reason    varchar(7500)    null,
    created_by_account int(11) unsigned null,
    deletion_date      datetime         null,
    deletion_reason    varchar(7500)    null,
    deleted_by         int              null
);

create index find_new
    on teams (id, created_by_account, deletion_date, creation_date, additional_id);

create index get_by_id
    on teams (deletion_date, id, additional_id);


