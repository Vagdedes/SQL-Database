create table instantCooldowns
(
    id         bigint auto_increment
        primary key,
    account_id int(11) unsigned null,
    action_id  int              null,
    expiration bigint           null
);

create index `check`
    on instantCooldowns (account_id, action_id, expiration);

create index panel
    on instantCooldowns (account_id, id);


