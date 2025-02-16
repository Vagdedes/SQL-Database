create table botSelectionSubComponents
(
    id                bigint auto_increment
        primary key,
    component_id      bigint        null,
    priority          int           null,
    name              varchar(100)  null,
    value             varchar(100)  null,
    description       varchar(100)  null,
    emoji             varchar(32)   null,
    `default`         tinyint(1)    null,
    creation_date     datetime      null,
    creation_reason   varchar(5000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5000) null
);

create index get
    on botSelectionSubComponents (component_id, expiration_date, deletion_date, priority);


