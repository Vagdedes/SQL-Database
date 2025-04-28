create table running
(
    id              bigint auto_increment
        primary key,
    server_hash     bigint null,
    script_hash     bigint null,
    expiration_time bigint null
);

create index get
    on running (server_hash, script_hash, expiration_time);


