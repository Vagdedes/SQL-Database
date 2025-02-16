create table botLevelTiers
(
    id                int auto_increment
        primary key,
    level_id          int           null,
    tier_name         varchar(64)   null,
    tier_description  varchar(512)  null,
    tier_points       double        null,
    listener_class    varchar(64)   null,
    listener_method   varchar(128)  null,
    creation_date     datetime      null,
    creation_reason   varchar(5000) null,
    expiration_date   datetime      null,
    expiration_reason varchar(5000) null,
    deletion_date     datetime      null,
    deletion_reason   varchar(5000) null
);

create index get
    on botLevelTiers (expiration_date, deletion_date, level_id);


