create table sqlErrors
(
    id       int auto_increment
        primary key,
    creation bigint       null,
    file     varchar(256) null,
    query    text         null,
    error    text         null,
    fixed    datetime     null
);

create index `both`
    on sqlErrors (creation, file);

create index class
    on sqlErrors (file);

create index creation
    on sqlErrors (creation);


