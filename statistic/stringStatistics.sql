create table stringStatistics
(
    id                  int auto_increment
        primary key,
    type                int              null,
    account_id          int(11) unsigned null,
    statistic_key       varchar(128)     null,
    statistic_value     varchar(1024)    null,
    creation_date       datetime         null,
    creation_reason     varchar(3750)    null,
    modification_date   datetime         null,
    modification_reason varchar(3750)    null,
    expiration_date     datetime         null,
    expiration_reason   varchar(3750)    null,
    deletion_date       datetime         null,
    deletion_reason     varchar(3750)    null
);

create index account
    on stringStatistics (account_id, expiration_date, deletion_date, id);

create index account_time
    on stringStatistics (account_id, modification_date, expiration_date, deletion_date);

create index `all`
    on stringStatistics (type, expiration_date, deletion_date, id);

create index all_time
    on stringStatistics (type, modification_date, expiration_date, deletion_date);

create index `check`
    on stringStatistics (type, statistic_key, deletion_date, expiration_date, id);

create index check_specific
    on stringStatistics (type, statistic_key, account_id, deletion_date, expiration_date, id);

create index check_time
    on stringStatistics (type, statistic_key, modification_date, expiration_date, deletion_date);

create index check_time_specific
    on stringStatistics (type, account_id, statistic_key, modification_date, expiration_date, deletion_date);

create index panel
    on stringStatistics (id, account_id);


