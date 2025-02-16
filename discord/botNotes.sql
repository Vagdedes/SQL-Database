create table botNotes
(
    id              bigint auto_increment
        primary key,
    server_id       bigint        null,
    note_id         bigint        null,
    note_key        varchar(32)   null,
    user_id         bigint        null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null,
    deleted_by      bigint        null
);

create index comparison
    on botNotes (note_id);

create index get
    on botNotes (note_key, deletion_date, user_id, server_id);

create index list
    on botNotes (id, server_id, user_id, deletion_date);


