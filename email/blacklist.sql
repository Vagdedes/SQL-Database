create table blacklist
(
    id                    int auto_increment
        primary key,
    email_address         varchar(384)  null,
    ignore_case           tinyint(1)    null,
    identification_method varchar(10)   null,
    creation_date         datetime      null,
    creation_reason       varchar(7500) null,
    deletion_date         datetime      null,
    deletion_reason       varchar(7500) null
);

create index deletion_date
    on blacklist (deletion_date);


