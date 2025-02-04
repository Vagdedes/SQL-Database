create table winners
(
    id          bigint auto_increment
        primary key,
    giveaway_id int              null,
    account_id  int(11) unsigned null
);

create index account_id
    on winners (account_id);

create index giveaway_id
    on winners (giveaway_id);


