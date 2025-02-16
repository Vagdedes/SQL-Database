create table botGiveawayRoles
(
    id              bigint auto_increment
        primary key,
    giveaway_id     bigint        null,
    role_id         bigint        null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    created_by      bigint        null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null,
    deleted_by      bigint        null
);

create index get
    on botGiveawayRoles (giveaway_id, deletion_date);


