create table privateConnections
(
    id         int auto_increment
        primary key,
    code       varchar(128) not null,
    expiration bigint       not null
)
    engine = MEMORY;

create index `check`
    on privateConnections (code);

create index `delete`
    on privateConnections (id, expiration);


