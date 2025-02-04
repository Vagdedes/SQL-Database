create table blockedFunctionalities
(
    id                bigint auto_increment
        primary key,
    account_id        int(11) unsigned null,
    executed_by       int(11) unsigned null,
    functionality_id  int              null,
    creation_date     datetime         null,
    creation_reason   varchar(5333)    null,
    expiration_date   datetime         null,
    expiration_reason varchar(5333)    null,
    deletion_date     datetime         null,
    deletion_reason   varchar(5333)    null,
    deleted_by        int(11) unsigned null
);

create index `delete`
    on blockedFunctionalities (account_id, functionality_id, deletion_date);

create index get_received
    on blockedFunctionalities (id, account_id, functionality_id, expiration_date, deletion_date);

create index get_received_all
    on blockedFunctionalities (id, account_id, functionality_id);

create index has_executed
    on blockedFunctionalities (executed_by, functionality_id, expiration_date, deletion_date);

create index has_executed_all
    on blockedFunctionalities (executed_by, functionality_id);

create index list_executed
    on blockedFunctionalities (id, executed_by, expiration_date, deletion_date);

create index list_executed_all
    on blockedFunctionalities (id, executed_by);

create index list_received
    on blockedFunctionalities (id, account_id, expiration_date, deletion_date);

create index list_received_all
    on blockedFunctionalities (id, account_id);

create index panel
    on blockedFunctionalities (id, account_id);


