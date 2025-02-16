create table botNoteSettings
(
    id            int auto_increment
        primary key,
    note_id       bigint     null,
    user_id       bigint     null,
    view_public   tinyint(1) null,
    read_history  tinyint(1) null,
    creation_date datetime   null
);

create index get
    on botNoteSettings (id, note_id);


