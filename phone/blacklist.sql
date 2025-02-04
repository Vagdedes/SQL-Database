create table blacklist
(
    id                    int auto_increment
        primary key,
    phone_number          varchar(19)   null,
    identification_method varchar(10)   null,
    creation_date         datetime      null,
    creation_reason       varchar(8000) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(8000) null
);

create index deletion_date
    on blacklist (deletion_date);


