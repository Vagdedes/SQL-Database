create table botNoteChanges
(
    id              bigint auto_increment
        primary key,
    note_id         bigint        null,
    user_id         bigint        null,
    title           varchar(128)  null,
    description     varchar(2000) null,
    creation_date   datetime      null,
    creation_reason varchar(7000) null,
    deletion_date   datetime      null,
    deletion_reason varchar(7000) null
);

create index history
    on botNoteChanges (id, note_id, deletion_date);


