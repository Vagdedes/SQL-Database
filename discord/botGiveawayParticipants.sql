create table botGiveawayParticipants
(
    id                   bigint auto_increment
        primary key,
    giveaway_id          bigint        null,
    giveaway_creation_id bigint        null,
    user_id              bigint        null,
    creation_date        datetime      null,
    creation_reason      varchar(8000) null,
    created_by           bigint        null,
    deletion_date        datetime      null,
    deletion_reason      varchar(8000) null,
    deleted_by           bigint        null
);

create index get
    on botGiveawayParticipants (giveaway_creation_id, user_id, deletion_date);


