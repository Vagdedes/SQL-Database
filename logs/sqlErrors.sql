create table sqlErrors
(
    id       int auto_increment
        primary key,
    creation bigint        null,
    file     varchar(1024) null,
    query    longtext      null,
    error    longtext      null,
    fixed    datetime      null
);


