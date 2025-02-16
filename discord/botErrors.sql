create table botErrors
(
    id            bigint auto_increment
        primary key,
    bot_id        bigint   null,
    object        longtext null,
    creation_date datetime null
);


