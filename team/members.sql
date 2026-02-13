create table members
(
    id              bigint auto_increment
        primary key,
    team_id         bigint           null,
    account_id      int(11) unsigned null,
    last_position   int              null,
    creation_date   datetime         null,
    creation_reason varchar(8000)    null,
    created_by      bigint           null,
    deletion_date   datetime         null,
    deletion_reason varchar(8000)    null,
    deleted_by      bigint           null
);

create index get
    on members (team_id, account_id, deletion_date);

create index get_multiple
    on members (team_id, deletion_date);

create index to_find_team
    on members (account_id, id, deletion_date);

create index to_find_team_specific
    on members (account_id, id, deletion_date, team_id);


