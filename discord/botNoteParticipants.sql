create table botNoteParticipants
(
    id                bigint auto_increment
        primary key,
    note_id           bigint     null,
    user_id           bigint     null,
    participant_id    bigint     null,
    read_history      tinyint(1) null,
    write_permission  tinyint(1) null,
    delete_permission tinyint(1) null,
    manage_permission tinyint(1) null,
    creation_date     datetime   null,
    ignore_date       datetime   null,
    deleted_by        bigint     null
);

create index get
    on botNoteParticipants (note_id, ignore_date);


