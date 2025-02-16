create table botLevelTracking
(
    id                int auto_increment
        primary key,
    level_id          int           null,
    user_id           bigint        null,
    level_points      double        null,
    creation_date     datetime      null,
    creation_reason   varchar(2000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(2000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(2000) null
);

create index get
    on botLevelTracking (level_id, user_id, deletion_date);

create index history
    on botLevelTracking (deletion_date, level_id);


