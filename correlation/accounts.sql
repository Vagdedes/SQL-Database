create table accounts
(
    id                    int auto_increment
        primary key,
    application_id        int           null,
    name                  varchar(32)   null,
    url                   varchar(512)  null,
    image                 longtext      null,
    limit_before_deletion int           null,
    manual                tinyint(1)    null,
    creation_date         datetime      null,
    creation_reason       varchar(7500) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(7500) null
);

create index add_id
    on accounts (id, deletion_date, application_id);

create index add_id_manual
    on accounts (id, deletion_date, application_id, manual);

create index add_name
    on accounts (deletion_date, name, application_id);

create index add_name_manual
    on accounts (name, deletion_date, application_id, manual);

create index panel
    on accounts (application_id);

create index selection
    on accounts (manual, deletion_date, application_id);

create index selection_specific
    on accounts (deletion_date, manual, application_id, id);


