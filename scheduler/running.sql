create table running
(
    id              bigint auto_increment
        primary key,
    server_hash     bigint null,
    script_hash     bigint null,
    expiration_time bigint null
)
    engine = MEMORY;

create index get
    on running (script_hash, expiration_time);


