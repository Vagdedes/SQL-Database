create table sqlErrors
(
    id       int auto_increment
        primary key,
    creation bigint unsigned null,
    file     longtext        null,
    query    longtext        null,
    error    longtext        null,
    fixed    datetime        null
);


