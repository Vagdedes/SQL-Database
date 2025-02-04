create table executedModerations
(
    id                bigint auto_increment
        primary key,
    account_id        int(11) unsigned null,
    executed_by       int(11) unsigned null,
    moderation_id     int              null,
    creation_date     datetime         null,
    creation_reason   varchar(5333)    null,
    expiration_date   datetime         null,
    expiration_reason varchar(5333)    null,
    deletion_date     datetime         null,
    deletion_reason   varchar(5333)    null,
    deleted_by        int(11) unsigned null
);

create index `delete`
    on executedModerations (account_id, moderation_id, deletion_date);

create index get_received
    on executedModerations (id, account_id, moderation_id, creation_date, deletion_date);

create index get_received_all
    on executedModerations (id, account_id, moderation_id);

create index has_executed
    on executedModerations (executed_by, moderation_id, expiration_date, deletion_date);

create index has_executed_all
    on executedModerations (moderation_id, executed_by);

create index list_executed
    on executedModerations (id, executed_by, deletion_date, expiration_date);

create index list_executed_all
    on executedModerations (id, executed_by);

create index list_received
    on executedModerations (id, account_id, expiration_date, deletion_date);

create index list_received_all
    on executedModerations (id, account_id);

create index panel
    on executedModerations (id, account_id);


