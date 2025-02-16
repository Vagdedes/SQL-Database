create table botModalSubComponents
(
    id                bigint auto_increment
        primary key,
    priority          int           null,
    component_id      bigint        null,
    custom_id         varchar(100)  null,
    required          tinyint(1)    null,
    allow_lines       tinyint(1)    null,
    min_length        int           null,
    max_length        int           null,
    default_value     varchar(4000) null,
    title             varchar(45)   null,
    placeholder       varchar(100)  null,
    creation_date     datetime      null,
    creation_reason   varchar(4000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(4000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(4000) null
);

create index get
    on botModalSubComponents (expiration_date, deletion_date, component_id, priority);


