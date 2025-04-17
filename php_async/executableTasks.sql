create table executableTasks
(
    id            bigint    not null
        primary key,
    creation_date timestamp null,
    php_code      longtext  null
);


