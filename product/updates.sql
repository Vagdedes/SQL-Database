create table updates
(
    id                  bigint auto_increment
        primary key,
    product_id          int           null,
    automated           tinyint(1)    null,
    prefix              varchar(64)   null,
    version             double        null,
    suffix              varchar(64)   null,
    name                varchar(128)  null,
    description         varchar(5000) null,
    file_name           varchar(128)  null,
    file_rename         varchar(128)  null,
    file_type           varchar(16)   null,
    note                varchar(256)  null,
    required_permission varchar(128)  null,
    creation_date       datetime      null,
    creation_reason     varchar(5000) null,
    expiration_date     datetime      null,
    deletion_date       datetime      null,
    deletion_reason     varchar(5000) null
);

create index comparison
    on updates (product_id, prefix, version, suffix, id);

create index query
    on updates (product_id, deletion_date, expiration_date, required_permission, creation_date);


