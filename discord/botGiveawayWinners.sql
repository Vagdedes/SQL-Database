create table botGiveawayWinners
(
    id                   bigint auto_increment
        primary key,
    giveaway_id          bigint        null,
    giveaway_creation_id int           null,
    user_id              bigint        null,
    creation_date        datetime      null,
    creation_reason      varchar(8000) null,
    deletion_date        datetime      null,
    deletion_reason      varchar(8000) null
);

create index get
    on botGiveawayWinners (giveaway_id, id);


