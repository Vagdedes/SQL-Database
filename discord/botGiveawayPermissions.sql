create table botGiveawayPermissions
(
    id              bigint auto_increment
        primary key,
    giveaway_id     bigint        null,
    permission      varchar(128)  null,
    creation_date   datetime      null,
    creation_reason varchar(8000) null,
    created_by      bigint        null,
    deletion_date   datetime      null,
    deletion_reason varchar(8000) null,
    deleted_by      bigint        null
);

create index get
    on botGiveawayPermissions (giveaway_id, deletion_date);


