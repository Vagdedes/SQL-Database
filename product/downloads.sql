create table downloads
(
    id                 bigint auto_increment
        primary key,
    account_id         int(11) unsigned null,
    product_id         int              null,
    token              varchar(32)      null,
    requested_by_token varchar(32)      null,
    download_count     int              null,
    max_downloads      int              null,
    creation_date      datetime         null,
    expiration_date    datetime         null,
    deletion_date      datetime         null
);

create index find
    on downloads (token, expiration_date, deletion_date);

create index get_or_create
    on downloads (account_id, id, expiration_date, deletion_date, product_id, max_downloads, download_count);

create index list_count
    on downloads (account_id, expiration_date);

create index list_count_simple
    on downloads (account_id);

create index redundancy
    on downloads (token);


